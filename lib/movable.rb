module Movable
  def Movable.to_rad(degree)
    return degree * Math::PI / 180
  end

  def Movable.distance(beginning, ending)
    x = to_rad(ending.longitude - beginning.longitude) * Math.cos(to_rad(beginning.latitude + ending.latitude)/2)
    y = to_rad(ending.latitude - beginning.latitude)
    r = 20890566.4
    return Math.sqrt(x*x + y*y) * r    
  end
end