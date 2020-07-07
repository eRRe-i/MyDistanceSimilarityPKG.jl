function minkowski_distance(set1::Array, set2::Array, p::Int64)

    @assert length(set1) == length(set2) "Sets don't have the same length."

    sum = zero(eltype(set1))

    for i in 1:length(set1)
        sum += abs(set2[i] - set1[i])^p
    end

    return sum^(1/p)
end
