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
  end

  def trail_info
    input = nil
    while input != "exit"
      puts "Enter the number of the trail you would like more information on, list to relist the trails, or type exit to exit the program."
      input = gets.strip
      case input
        when "1"
          puts "More info on trail 1"
        when "2"
          puts "More info on trail 2"
        when "list"
        list_trails
      else
        puts "That is not an option :(, type list or exit"
      end
    end
  end

end
