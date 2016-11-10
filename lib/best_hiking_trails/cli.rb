# CLI Controller
class BestHikingTrails::CLI

  def call
    puts "The top 25 hiking trails"
    list_trails
    trail_info
  end

  def list_trails
    #get hiking trails ******FAKE INFO FOR NOW*****
    puts <<-DOC.gsub /^\s*/, ''
    1. Inca Trail
    2. Appalachian Trail
    3. Kilimanjaro
    4. Kungsleden
    DOC
  end

  def trail_info
    puts "Enter the number of the trail you would like more information on."
  end

end
