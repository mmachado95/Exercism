class Triangle
  def initialize(sides)
    @sides = sides.sort()
  end

  def equilateral?
    return false unless valid_triangle?
    @sides[0] == @sides[1] && @sides[0] == @sides[2]
  end


  def isosceles?
    return false unless valid_triangle?
    @sides[0] == @sides[1] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
  end

  def scalene?
    return false unless valid_triangle?
    !(equilateral? || isosceles?)
  end

  private

  def valid_triangle?
    @sides[0] + @sides[1] > @sides[2]
  end
end
