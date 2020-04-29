module TestSuite
    using Test, Legendre
    const LMAX = 5
    const NumTypes = (Float32, Float64, BigFloat)

    function runtests(norm)
        @testset "Normalization $(typeof(norm))" begin
            interface(norm)
        end
    end

    function interface(norm)
        # Test all the aspects of the interface that each normalization type must
        # implement
        @testset "Legendre Interface" begin
            @test norm isa AbstractLegendreNorm
            # Initial condition
            @test isfinite(Legendre.Plm_00(norm, Float64))
            # 1-term recurrence coefficients
            @test isfinite(Legendre.Plm_μ(norm, Float64, 1))
            @test isfinite(Legendre.Plm_ν(norm, Float64, 1))
            # 2-term recurrence coefficients
            @test isfinite(Legendre.Plm_α(norm, Float64, 1, 0))
            @test isfinite(Legendre.Plm_β(norm, Float64, 1, 0))

            # Check that the boundscheck_hook() returns `nothing`
            @test @inferred(Legendre.boundscheck_hook(norm, 0, 0)) === nothing

            # Make sure object calls have not been shadowed
            Λ₁ = zeros(LMAX+1, LMAX+1)
            Λ₂ = zeros(LMAX+1, LMAX+1)
            @test norm(    LMAX, LMAX, 0.5) == legendre( norm,     LMAX, LMAX, 0.5)
            @test norm(Λ₁, LMAX, LMAX, 0.5) == legendre!(norm, Λ₁, LMAX, LMAX, 0.5)
        end
    end
end
