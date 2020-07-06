function manhattan_distance(set1::Union{Vector, Array}, set2::Union{Vector, Array})

    @assert length(set1) == length(set2) "Sets don't have the same length."

    sum = zero(eltype(set1))

    for i in 1:length(set1)
        sum += abs(set2[i] - set1[i])
    end

    return sum
end
