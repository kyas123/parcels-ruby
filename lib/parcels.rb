class Parcel

  def initialize(length,width,height,weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def length
    @length
  end

  def width
    @width
  end

  def height
    @height
  end


  def volume
    @product = @length * @width * @height
  end

  def cost_to_ship
    @cost = (self.volume / 2) * @weight
  end
end
