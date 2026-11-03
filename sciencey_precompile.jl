using Pkg
pkg"activate ../TravelingWaveSimulations"

using OrdinaryDiffEq, DiffEqBase, DiffEqOperators
using Statistics, LinearAlgebra
using AxisIndices
using Interpolations

modules =  [OrdinaryDiffEq, DiffEqBase, DiffEqOperators,
            Statistics, LinearAlgebra, AxisIndices, Interpolations]

for mod in modules
    try
        include(joinpath(pkgdir(mod), "test", "runtests.jl"))
    catch e
        @info "$mod tests error"
    end
end