class ConcertFinderCliApp::Scraper
  BASE_PATH = "https://www.songkick.com"

  def self.get_cities
    cities = Nokogiri::HTML(open("https://www.songkick.com/session/filter_metro_area"))

    city_names = []

    cities.css("div.popular-metro-areas ol:first-child li").each_with_index do |item, index|
      # url = item.css("a").attribute("href").value
      City.new(item.css("a").text, BASE_PATH + item.css("a").attribute("href").value) unless index == 0
    end
    City.all
  end

  def self.get_concerts(city)
    city_page = Nokogiri::HTML(open(city.url))

    concerts = []

    city_page.css("div.events-summary ul.event-listings li").each do |concert|
      if concert.css("p.artists strong").text != ""
        concerts << concert.css("p.artists strong").text
      end
    end
    binding.pry
  end

end
