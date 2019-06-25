
class HighScores
  attr_accessor :scores

  def initialize(scores)
    # +scores+::+Array+ containing all the scores obtained by a player
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end
end
