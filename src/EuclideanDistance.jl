function euclidean_distance(set1::Array, set2::Array)

    @assert length(set1) == length(set2) "Sets don't have the same length"

    sum = zero(eltype(set1))

    for i in 1:length(set1)
            sum += (set2[i] - set1[i])^2
    end

    return sqrt(sum)

end
