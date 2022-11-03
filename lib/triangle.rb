class Triangle

  def initialize (side1, side2, side3)
    all_sides = [side1, side2, side3]
    
    @side1 = side1
    @side2 = side2
    @side3 = side3

    all_sides.each do |side|
      if side <= 0 
        raise TriangleError
      elsif side >= all_sides.sum - side
        raise TriangleError
      end
    end

  end

  def kind
    if (@side1 == @side2 && @side1 == @side3)
      :equilateral
    elsif (@side1 == @side2 || @side1 == @side3 || @side2 == @side3)
      :isosceles
    else 
      :scalene
    end
  end
  class TriangleError < StandardError
  end
end

t1 = Triangle.new(2,3,4)
test = :kind
puts t1.kind