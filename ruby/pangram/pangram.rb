class Pangram
  def self.pangram?(sentence)
    number_of_unique_letters = sentence.downcase.scan(/[a-z]/).uniq.count
    number_of_unique_letters == 26
  end
end
