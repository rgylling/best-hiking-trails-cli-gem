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
    trail_names = []
    doc = Nokogiri::HTML(open("https://www.theoutbound.com/theoutbound/the-best-25-hikes-in-america"))
    trails = doc.xpath("//h3").each_with_index do |name, i|
      trail_names << name.content
      break if i == 24;
    end
    trail_names
  end

  #test to see how I will get more information on a specific hike
  # doc2 = Nokogiri::HTML(open("https://www.theoutbound.com/colorado/hiking/hike-to-hanging-lake"))
  # title = doc2.search(".dynamic-height-container .adventure-description p").text
  # end


end
