class BestHikingTrails::Trail

  attr_accessor :name, :location

  def self.today
    #scrape 25 best hiking trails and return that data
    self.scrape_trails
  end

  def self.scrape_trails
    trails = []
    #go to 25 best hiking trails, extract the properties instantiate a trail

    trails

  end

end
