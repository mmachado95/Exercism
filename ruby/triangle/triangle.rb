class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false if invalid?

    number_of_matching_sides == 3
  end


  def isosceles?
    return false if invalid?

    number_of_matching_sides >= 2
  end

  def scalene?
    return false if invalid?

     number_of_matching_sides == 0
  end

  private

  def invalid?
    a, b, c = @sides.sort

    @sides.any?(&:zero?) || a + b < c
  end

  def number_of_matching_sides
    if @sides[0] == @sides[1] && @sides[0] == @sides[2]
      3
    elsif @sides[0] == @sides[1] || @sides[0] == @sides[2] ||@sides[1] == @sides[2]
      2
    else
      0
    end
  end
end
