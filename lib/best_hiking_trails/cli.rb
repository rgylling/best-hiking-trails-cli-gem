# CLI Controller
class BestHikingTrails::CLI

  def call
    list_trails
    trail_info
  end

  def list_trails

    puts "The top 10 hiking trails"
    @trails = BestHikingTrails::Trail.scrape
    @trails.each.with_index(1) do |trail, i|
      puts "#{trail.name}"
    end
  end

  def trail_info
    input = nil
    while input != "exit"
      puts "Enter the number of the trail you would like more information on, list to relist the trails, or type exit to exit the program."
      input = gets.strip
      if input.to_i > 0 && input.to_i <= 10
        the_trail = @trails[input.to_i-1]
        puts "#{the_trail.name}, #{the_trail.information}"
      elsif input == "list"
        list_trails
      else
        puts "That is not an option :(, type list or exit"
      end
    end
  end

end
