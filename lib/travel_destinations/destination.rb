class TravelDestinations::Destination

  attr_accessor :name, :description
  @@all = []

  def self.all 
    @@all 
  end

  def self.save
    @@all << self.scrape
  end

   def self.scrape
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
    binding.pry
    # continue video from 53:37 here
  end

end