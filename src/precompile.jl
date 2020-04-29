function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(Tuple{LegendreNormCoeff{LegendreSphereNorm,Float32},Int64,Int64,Float32})
    precompile(Tuple{LegendreNormCoeff{LegendreUnitNorm,Float32},Int64,Int64,Float32})
    precompile(Tuple{LegendreSphereNorm,Int64,Int64,Float32})
    precompile(Tuple{LegendreUnitNorm,Int64,Int64,Float32})
    precompile(Tuple{Type{LegendreNormCoeff{LegendreSphereNorm,Float32}},Int64})
    precompile(Tuple{Type{LegendreNormCoeff{LegendreUnitNorm,Float32}},Int64})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreSphereNorm,Float32},UnitRange{Int64},Int64,Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreSphereNorm,Float32},UnitRange{Int64},Int64,Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreSphereNorm,Float32},UnitRange{Int64},UnitRange{Int64},Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreUnitNorm,Float32},UnitRange{Int64},Int64,Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreUnitNorm,Float32},UnitRange{Int64},Int64,Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreUnitNorm,Float32},UnitRange{Int64},UnitRange{Int64},Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreNormCoeff{LegendreUnitNorm,Float32},UnitRange{Int64},UnitRange{Int64},Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreSphereNorm,UnitRange{Int64},Int64,Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreSphereNorm,UnitRange{Int64},Int64,Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreSphereNorm,UnitRange{Int64},UnitRange{Int64},Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreSphereNorm,UnitRange{Int64},UnitRange{Int64},Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreUnitNorm,UnitRange{Int64},Int64,Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreUnitNorm,UnitRange{Int64},Int64,Float32})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreUnitNorm,UnitRange{Int64},UnitRange{Int64},Array{Float32,1}})
    precompile(Tuple{typeof(Base.Broadcast.broadcasted),LegendreUnitNorm,UnitRange{Int64},UnitRange{Int64},Float32})
    precompile(Tuple{typeof(show),Base.TTY,MIME{Symbol("text/plain")},LegendreNormCoeff{LegendreSphereNorm,Float32}})
    precompile(Tuple{typeof(show),Base.TTY,MIME{Symbol("text/plain")},LegendreNormCoeff{LegendreSphereNorm,Float64}})
    precompile(Tuple{typeof(show),Base.TTY,MIME{Symbol("text/plain")},LegendreNormCoeff{LegendreUnitNorm,Float32}})
    precompile(Tuple{typeof(show),Base.TTY,MIME{Symbol("text/plain")},LegendreNormCoeff{LegendreUnitNorm,Float64}})
end
