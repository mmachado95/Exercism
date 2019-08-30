class Complement
  RNA_COMPLEMENT = {
    "C" => "G",
    "G" => "C",
    "T" => "A",
    "A" => "U",
  }

  def self.of_dna(nucleotides)
    nucleotides.each_char.map(&RNA_COMPLEMENT).join
  end
end
