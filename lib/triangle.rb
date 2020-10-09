class Triangle
attr_accessor :isosceles, :equilateral, :scalene

class TriangleError < StandardError
  end
end

  def initialization(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind (a, b, c)
    a, b, c = [a, b, c].sort
    raise TriangleError if a <= 0 or a + b <= c
    return :equilateral if a == c
    return :isosceles if a == b or b == c
    return :scalene
  end


end








end
