class Phrase
  attr_accessor :input

  def initialize(input)
    self.input = input
  end

  def word_count
    words.tally
  end

  private

  def words
    input.downcase.scan(/\b[\w\']+\b/)
  end
end