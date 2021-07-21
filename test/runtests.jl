using Test, SafeTestsets

@safetestset "TopOptProblems.jl" begin
    include("problems.jl")
    include("metadata.jl")
end