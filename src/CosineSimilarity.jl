function cosine_similarity(set1::Union{Vector, Array}, set2::Union{Vector, Array})

    @assert length(set1) == length(set2) "Sets don't have the same length."

    num = zero(eltype(set1))
    for i in 1:length(set1)
        num += set1[i] * set2[i]
    end
    norm_set1 = zero(eltype(set1))
    norm_set2 = zero(eltype(set2))
    for i in 1:length(set1)
        norm_set1 += set1[i]^2
        norm_set2 += set2[i]^2
    end
    norm_set1, norm_set2 = sqrt(norm_set1), sqrt(norm_set2)
    dem = norm_set1 * norm_set2

    if dem == 0
        throw(ArgumentError("denominador igual a 0"))
    end
    return num/dem
end

function cosine_similarity_2(set1, set2)
    return dot(set1, set2) / (norm(set1) * norm(set2))
end
