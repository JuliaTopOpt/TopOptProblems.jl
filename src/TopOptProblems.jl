module TopOptProblems

using Ferrite, StaticArrays, LinearAlgebra
using SparseArrays, Setfield, Requires
import Distributions

using VTKDataTypes

import Ferrite: assemble!

abstract type AbstractTopOptProblem end

include("Utilities/Utilities.jl")
using .Utilities
using .Utilities: @forward_property

include("utils.jl")
include("grids.jl")
include("metadata.jl")
include("problem_types.jl")
include("multiload.jl")
include("elementmatrix.jl")
include("matrices_and_vectors.jl")
include("elementinfo.jl")
include("assemble.jl")
include("buckling.jl")

include(joinpath("IO", "IO.jl"))
using .InputOutput

export RayProblem, PointLoadCantilever, HalfMBB, LBeam, TieBeam, InpStiffness, StiffnessTopOptProblem, AbstractTopOptProblem, GlobalFEAInfo, ElementFEAInfo, YoungsModulus, assemble, assemble_f!, RaggedArray, ElementMatrix, rawmatrix, bcmatrix, save_mesh, RandomMagnitude, MultiLoad

end # module
