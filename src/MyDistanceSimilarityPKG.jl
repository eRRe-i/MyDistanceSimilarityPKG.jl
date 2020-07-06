module MyDistanceSimilarityPKG
using LinearAlgebra
include("CosineSimilarity.jl")
include("ManhattanDistance.jl")

export greet

"""
This is my fisrt attempt in Julia Package Development.
Any contribution and code review will be much appreciated! :)

Esta é a minha primeira tentativa em desenvolvimento de Pacotes em Julia.
Qualquer contribuição de code review será muito bem-vinda! :)
"""

greet() = print("Hello and thank you for your visit!")

end # module
