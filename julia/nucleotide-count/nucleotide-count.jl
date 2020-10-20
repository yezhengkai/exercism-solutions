"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    countdict = Dict(base => count("$base", strand) for base in "ACGT")
    sum(values(countdict)) != length(strand) && throw(DomainError(strand, "Invalid strands"))
    return countdict
end