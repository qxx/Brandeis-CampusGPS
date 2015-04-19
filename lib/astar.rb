require "#{Rails.root}/lib/movable.rb"

class Astar
    attr_accessor :neighbor_locations
    def initialize(neighbor_locations)
        @neighbor_locations = neighbor_locations
    end

    def distance(start, destination)
      Movable.distance(start,destination)
    end

    def astar(start,destination)        
        found = false
        closedset = []
        openset = {start=>0} 
        came_from = {}
        g_score = {}
        
        
        g_score[start] = 0
        openset[start] = 0 + Movable.distance(start,destination)
        
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
                tentative_g_score = g_score[current] + Movable.distance(current,neighbor)

                if !openset.has_key?(neighbor) || tentative_g_score < g_score[neighbor] #if neighbor not in openset
                    
                    came_from[neighbor] = current
                    g_score[neighbor] = tentative_g_score
                    openset[neighbor] = g_score[neighbor] + Movable.distance(neighbor,destination)
                    
                end
            end
        end
        if !found
            return nil
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