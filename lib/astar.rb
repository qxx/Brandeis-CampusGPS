class Location
    attr_accessor :longtitude, :lattitude
    def initialize(longtitude,lattitude)
        @longtitude = longtitude
        @lattitude = lattitude
    end
end

class Astar
    attr_accessor :neighbor_locations
    def initialize(neighbor_locations)
        @neighbor_locations = neighbor_locations
    end

    def distance(beginning, ending)
        x = (ending.longtitude - beginning.longtitude) * Math.cos((beginning.lattitude + ending.lattitude)/2)
        y = ending.lattitude - beginning.lattitude
        r = 20876.1041905
        return Math.sqrt(x*x+y*y)*r    
    end

    def astar(start,destination)
        
        found = false
        closedset = []
        openset = {start=>0} #need all the location
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
        p total_path.reverse.map {|p| [p.longtitude, p.lattitude]}
        return total_path.reverse
    end
end


loc1 = Location.new(1,1)
loc2 = Location.new(1,2)
loc3 = Location.new(4,1)
loc4 = Location.new(2,3)

#openset = {loc1=>0, loc2=>0,loc3=>0,loc4=>0}
neighbor_locations = {loc1 => [loc2], loc2 =>[loc1,loc3,loc4], loc3 =>[loc2, loc4], loc4 =>[loc2,loc3]}
search = Astar.new(neighbor_locations)
search.astar(loc1,loc4)
    #closedset := the empty set    // The set of nodes already evaluated.
    #openset := {start}    // The set of tentative nodes to be evaluated, initially containing the start node
    #came_from := the empty map    // The map of navigated nodes.
 
    #g_score[start] := 0    // Cost from start along best known path.
    #// Estimated total cost from start to goal through y.
    #f_score[start] := g_score[start] + heuristic_cost_estimate(start, goal)
 
    #while openset is not empty
        #current := the node in openset having the lowest f_score[] value
        #if current = goal
            #return reconstruct_path(came_from, goal)
 
        #remove current from openset
        #add current to closedset
        #for each neighbor in neighbor_nodes(current)
            #if neighbor in closedset
                #continue
            #tentative_g_score := g_score[current] + dist_between(current,neighbor)
 
            #if neighbor not in openset or tentative_g_score < g_score[neighbor] 
                #came_from[neighbor] := current
                #g_score[neighbor] := tentative_g_score
                #f_score[neighbor] := g_score[neighbor] + heuristic_cost_estimate(neighbor, goal)
                ##if neighbor not in openset
                    ##add neighbor to openset
 
    #return failure

#function reconstruct_path(came_from,current)
    #total_path := [current]
    #while current in came_from:
        #current := came_from[current]
        #total_path.append(current)
    #return total_path