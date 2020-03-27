class Rectangle
  def initialize(l, b)
    @l = l
    @b = b
  end

  def perimeter
    2 * (@l + @b)
  end

  def area
    @l * @b
  end
end

print(Rectangle.new(2, 2).perimeter)
