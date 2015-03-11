#require_relative '../../lib/astar.rb'


class Astar
    attr_accessor :neighbor_locations
    def initialize(neighbor_locations)
        @neighbor_locations = neighbor_locations
    end

    def distance(beginning, ending)
        x = (ending.longitude - beginning.longitude) * Math.cos((beginning.latitude + ending.latitude)/2)
        y = ending.latitude - beginning.latitude
        r = 20876.1041905
        return Math.sqrt(x*x+y*y)*r    
    end

    def astar(start,destination)        
        found = false
        closedset = []
        openset = {start=>0} 
        came_from = {}
        g_score = {}
        
        
        g_score[start] = 0
        openset[start] = 0 + distance(start,destination)
        
        current = start
        while !openset.empty?
           
            current = openset.keys[0]
            openset.each do |location, f_score|
                if openset[location] < openset[current]
                    current = location
                end
            end
            
            if current == destination
                found = true 
                return reconstruct_path(came_from, destination)
            end

            openset.delete(current)
            closedset.push(current)

            neighbor_array = @neighbor_locations[current]
            
            neighbor_array.each do |neighbor|
                if closedset.include?(neighbor) #if neighor is in closedset
                    next
                end
                tentative_g_score = g_score[current] + distance(current,neighbor)

                if !openset.has_key?(neighbor) || tentative_g_score < g_score[neighbor] #if neighbor not in openset
                    
                    came_from[neighbor] = current
                    g_score[neighbor] = tentative_g_score
                    openset[neighbor] = g_score[neighbor] + distance(neighbor,destination)
                    
                end
            end
        end
        if !found
            return error
        end
    end

    def reconstruct_path(came_from,current)
        total_path = [current]
        while came_from.has_key?(current)
            current = came_from[current]
            total_path.push(current)
        end
        #p total_path.reverse.map {|p| [p.longtitude, p.lattitude]}
        return total_path.reverse
    end
end

class OutdoorController < ApplicationController
  skip_before_filter :authorize

  def index
    @buildings = Building.order(:name)

    # Google Map
    @users = [Building.first]
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat 42.366629
  		marker.lng -71.259510
#  		marker.infowindow user.description
	  end
  end

#  def routing
#    @buildingsfrom = Building.all.order(:name)
#    @buildingsto = Building.all.order(:name)
#    if params[:from]
#      @buildingsfrom = Building.all.find_by name:(params[:from])
#    else
#      @buildingsfrom = Building.all.order(:name)
#    end
#    if params[:to]
#      @buildingsto = Building.all.find_by name:(params[:to])
#    else
#      @buildingsto = Building.all.order(:name)
#    end
#  end

  def routing
    @buildings = Building.order(:name)
    if params[:from]
      @building_from = Building.find(params[:from])
    end
    if params[:to]
      @building_to = Building.find(params[:to])
    end

    if @building_from && @building_to && @building_from != @building_to
      route = Route.where(start_location_id: @building_from.loc_id, end_location_id: @building_to.loc_id).first
      #if route.nil?
        neighbor_locations = {}
        Location.all.each do |l|
          neighbor_locations[l] = []
        end

        Path.all.each do |p|
          start_loc = Location.find(p.start_location_id)
          end_loc = Location.find(p.end_location_id)
          neighbor_locations[start_loc] << end_loc
        end
      
        search = Astar.new(neighbor_locations)
        search_result = search.astar(Location.find(@building_from.loc_id), Location.find(@building_to.loc_id))
        @locations = search_result
        @paths = @locations.map.with_index do |loc,i|
          if i == @locations.length - 1
            nil
          else
            Path.find_by(start_location_id: @locations[i].id, end_location_id: @locations[i+1].id)
          end
        end
        @paths.pop
       
      #else
        #@paths = route.paths
        #@locations = @paths.map do |p|
          #p.start_location_id
        #end
        #@locations << @paths.last.end_location_id
      #end
    end

    @from_track = @building_from ? @building_from.id : 0
    @to_track = @building_to ? @building_to.id : 0

    @users = [@building_from, @building_to].compact
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
    end

    if @building_from.nil? && @building_to.nil?
      @centerMarker = 0
    elsif @building_from.nil?
      @centerMarker = @to_track -1
    else
      @centerMarker = @from_track -1
    end

  end

end
