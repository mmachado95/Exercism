class Complement
  RNA_COMPLEMENT = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U",
  }

  def self.of_dna(nucleotides)
    nucleotides.each_char.map {|nucleotide| RNA_COMPLEMENT[nucleotide] }.join
  end
end
