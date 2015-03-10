class Route < ActiveRecord::Base
  has_many :route_constructors
  has_many :paths, through: :route_constructors

  def paths
    RouteConstructor.where(route_id: self.id).order(path_order: :asc).map {|c| Path.find(c.path_id)}
  end
end
