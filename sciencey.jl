using PackageCompiler, Pkg
pkg"activate ../TravelingWaveSimulations"

modules =  [:OrdinaryDiffEq, :DiffEqBase, :DiffEqOperators,
            :Statistics, :LinearAlgebra, :AxisIndices, :Interpolations]

create_sysimage(modules; precompile_execution_file="sciencey_precompile.jl",
                sysimage_path="sciencey.so"
                )