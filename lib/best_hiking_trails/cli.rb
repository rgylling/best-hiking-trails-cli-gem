# CLI Controller
class BestHikingTrails::CLI

  def call
    list_trails
    trail_info
  end

  def list_trails
    #get hiking trails ******FAKE INFO FOR NOW*****
    puts "The top 25 hiking trails"
    @trails = BestHikingTrails::Trail.today
    @trails.each.with_index(1) do |trail, i|
      puts "#{i}. #{trail.name}, #{trail.location}"
    end
  end

  def trail_info
    input = nil
    while input != "exit"
      puts "Enter the number of the trail you would like more information on, list to relist the trails, or type exit to exit the program."
      input = gets.strip
      if input.to_i > 0
        puts @trails[input.to_i-1]
      elsif input == "list"
        list_trails
      else
        puts "That is not an option :(, type list or exit"
      end
    end
  end

end
