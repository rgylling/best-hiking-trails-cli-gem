class BestHikingTrails::Trail

  attr_accessor :name, :information
  @information_arr = []
  doc0 = Nokogiri::HTML(open("https://www.theoutbound.com/colorado/hiking/hike-to-hanging-lake"))
  title0 = doc0.search(".dynamic-height-container .adventure-description p").text
  @information_arr << title0
  doc1 = Nokogiri::HTML(open("https://www.theoutbound.com/washington/hiking/hike-to-the-enchantments"))
  title1 = doc1.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title1
  doc2 = Nokogiri::HTML(open("https://www.theoutbound.com/utah/hiking/hike-angel-s-landing-at-night"))
  title2 = doc2.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title2
  doc3 = Nokogiri::HTML(open("https://www.theoutbound.com/oregon/hiking/hike-and-camp-at-smith-rock"))
  title3 = doc3.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title3
  doc4 = Nokogiri::HTML(open("https://www.theoutbound.com/north-carolina/backpacking/backpack-the-roan-highlands-appalachian-trail"))
  title4 = doc4.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title4
  doc5 = Nokogiri::HTML(open("https://www.theoutbound.com/washington/hiking/day-hike-gothic-basin"))
  title5 = doc5.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title5
  doc6 = Nokogiri::HTML(open("https://www.theoutbound.com/virginia/hiking/hike-to-spy-rock"))
  title6 = doc6.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title6
  doc7 = Nokogiri::HTML(open("https://www.theoutbound.com/yosemite/hiking/backpack-the-full-john-muir-trail"))
  title7 = doc7.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title7
  doc8 = Nokogiri::HTML(open("https://www.theoutbound.com/oregon/hiking/hiking-oneonta-gorge"))
  title8 = doc8.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title8
  doc9 = Nokogiri::HTML(open("https://www.theoutbound.com/colorado/hiking/hike-to-hanging-lake"))
  title9 = doc9.search(".dynamic-height-container .adventure-description p").text
    @information_arr << title9

  def self.today
    #scrape 25 best hiking trails and return that data
    self.scrape_best_trails
  end

  def self.scrape_trails
    trails = []
    trails << self.scrape_best_trails
    #go to 25 best hiking trails, extract the properties instantiate a trail

    trails

  end

  def self.scrape_best_trails
    trail_obj = []
    doc = Nokogiri::HTML(open("https://www.theoutbound.com/theoutbound/the-best-25-hikes-in-america"))
    trails = doc.xpath("//h3").each_with_index do |name, i|
      trail = self.new
      trail.name = name.content
      trail.information = @information_arr[i]
      trail_obj << trail
      break if i == 9;
    end
    trail_obj
  end

end
