class BestHikingTrails::Trail

  def self.today
    #return trails
    puts <<-DOC.gsub /^\s*/, ''
    1. Inca Trail
    2. Appalachian Trail
    3. Kilimanjaro
    4. Kungsleden
    DOC
  end

end
