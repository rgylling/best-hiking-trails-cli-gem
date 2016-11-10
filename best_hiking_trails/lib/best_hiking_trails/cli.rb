# CLI Controller
class BestHikingTrails::CLI

  def call
    puts "The top 25 hiking trails"
    list_trails
  end

  def list_trails
    #get hiking trails (fake info for now)
    puts "<<-DOC.gsub /^\s*/, ''
     1.Inca Trail
     2.Appalachian Trail
     3.Kilimanjaro
     4.Kungsledenls
     DOC"
  end

end
