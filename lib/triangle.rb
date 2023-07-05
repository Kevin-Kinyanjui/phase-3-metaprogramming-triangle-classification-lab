class Triangle
  attr_writer :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    validate_triangle
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :isosceles
    else
      :scalene
    end
  end

    class TriangleError < StandardError
      def message
        "Not a valid triangle!"
      end
    end

  private

  def validate_triangle
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 || (@side1 + @side2 <= @side3) || (@side1 + @side3 <= @side2) || (@side2 + @side3 <= @side1)
        raise TriangleError
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    end
  end
end

