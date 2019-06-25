class Complement
  def self.of_dna(nucleotides)
    rna_nucleotides = ""

    nucleotides.each_char {|nucleotide| rna_nucleotides << complement(nucleotide) }

    rna_nucleotides
  end

  def self.complement(nucleotide)
    # Returns the RNA complement of the DNA nucleotide.
    # A DNA nucleotide is translated to RNA following these rules:
    #   G -> C
    #   C -> G
    #   T -> A
    #   A -> U

    case nucleotide
    when "C"
      "G"
    when "G"
      "C"
    when "T"
      "A"
    when "A"
      "U"
    else
      ""
    end
  end
end
