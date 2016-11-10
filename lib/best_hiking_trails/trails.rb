class BestHikingTrails::Trail

  attr_accessor :name, :location

  def self.today
    #return trails
    # puts <<-DOC.gsub /^\s*/, ''
    # 2. Appalachian Trail
    # 3. Kilimanjaro
    # 4. Kungsleden
    # DOC

    #entering fake data
    trail_1 = self.new
    trail_1.name = "Inca Trail"
    trail_1.location = "Peru"

    trail_2 = self.new
    trail_2.name = "Appalachian Trail"
    trail_2.location = "Georgia to Maine, United States"

    [trail_1, trail_2]
  end

end
