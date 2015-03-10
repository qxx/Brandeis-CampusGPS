class RouteConstructor < ActiveRecord::Base
  belongs_to :route
  belongs_to :path
end