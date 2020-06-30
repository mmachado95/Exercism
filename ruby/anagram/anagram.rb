class Anagram

  def initialize(word)
    @word = word.downcase
  end

  def match(potential_anagrams)
    potential_anagrams.select { |potential_anagram| anagram?(potential_anagram.downcase) }
  end

  private

  def anagram?(potential_anagram)
    @word != potential_anagram && sorted_word(@word) == sorted_word(potential_anagram)
  end

  def sorted_word(word)
    word.chars.sort.join
  end

end