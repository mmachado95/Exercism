class Acronym
  # Given a phrase returns an acronym composed by the first letter of each word.
  # Example:
  # Acronym.abbreviate('Portable Network Graphics') => PNG
  # Acronym.abbreviate('First In, First Out')       => FIFO
  def self.abbreviate(phrase)
    # regex that detects the first letter of each word
    regex = /\b[a-zA-Z]/

    phrase.scan(regex).join.upcase
  end
end
