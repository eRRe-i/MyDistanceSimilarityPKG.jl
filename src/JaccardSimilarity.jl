function jaccard_similarity(set1::Array, set2::Array)

    intersec = 0.0
    set1 = unique(set1)
    set2 = unique(set2)

    for i in set1
        for j in set2
            if i == j
                intersec += 1.0
            end
        end
    end
    return intersec / (length(set1) + length(set2) - intersec)
end
