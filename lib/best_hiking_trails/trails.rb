class BestHikingTrails::Trail

  attr_accessor :name, :location

  def self.today
    #scrape 25 best hiking trails and return that data
    self.scrape_trails
  end

  def self.scrape_trails
    trails = []
    deals << self.scrape_best_trails
    #go to 25 best hiking trails, extract the properties instantiate a trail

    trails

  end

  def self.scrape_best_trails
    
    doc = Nokogiri::HTML(open("https://www.theoutbound.com/theoutbound/the-best-25-hikes-in-america"))
    testing = doc.xpath("//h3").each_with_index do |name, i|
      puts name.content
      break if i == 24;
    end

  end

end
