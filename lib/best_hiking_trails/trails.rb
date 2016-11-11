class BestHikingTrails::Trail

  attr_accessor :name, :information

  def self.scrape
    self.scrape_best_trails
  end

  def self.scrape_best_trails
    trail_obj = []
    doc = Nokogiri::HTML(open("https://www.theoutbound.com/theoutbound/the-best-25-hikes-in-america"))
    trails = doc.xpath("//h3").each_with_index do |name, i|
      trail = self.new
      trail.name = name.content
      trail.information = self.scrape_information(i)
      trail_obj << trail
      break if i == 9;
    end
    trail_obj
  end

  def self.scrape_information(number)
    information_arr = []
    doc = Nokogiri::HTML(open("https://www.theoutbound.com/theoutbound/the-best-25-hikes-in-america"))
    trails = doc.search(".description.story-content p").each_with_index do |name, i|
    information_content = name.content.gsub("America is home to some of the most beautiful natural scenery in the world and while we definitely plan to indulge in the hot dogs, fireworks, and red white and blue everything, we think the best way to celebrate The Fourth of July is going out for a hike with friends and family. So head out on one of America's 25 Best Hikes or hit up your favorite local trail and celebrate the holiday weekend by getting outside!", "").gsub("Photo: Nicola Easterby", "").gsub("Photo: Mikaela Tangeman", "").gsub("Photo: Derrick Lyttle", "").gsub("Photo: Jessica Dales", "").gsub("Photo: Steve Yocom", "").gsub("Photo: Derek Cook", "").gsub("Photo: Christin Healey", "").gsub("Photo: Bo Baumgartner", "").gsub("Photo: Michael Matti", "").gsub("Photo: Adam Riquier", "").gsub("\n\n\n\n", "")
    information_arr << information_content
    break if i == 10;
    end
    information_arr.shift
    information_arr[number]
  end

end
