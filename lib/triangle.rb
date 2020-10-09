class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def type

  end

  def valid
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      triangle << false if side <= 0
      raise TriangleError if triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end



end
