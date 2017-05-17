class ConcertFinderCliApp::Scraper
  BASE_PATH = "https://www.songkick.com"

  def self.get_cities
    cities = Nokogiri::HTML(open("https://www.songkick.com/session/filter_metro_area"))

    cities.css("div.popular-metro-areas ol:first-child li").each_with_index do |item, index|
      City.new(item.css("a").text, BASE_PATH + item.css("a").attribute("href").value) unless index == 0
    end
    City.all
  end

  def self.get_concerts(city)
    city_page = Nokogiri::HTML(open(city.url))

    city_page.css("div.events-summary ul.event-listings li").each do |concert|
      if concert.css("p.artists strong").text != ""
        # date = concert
        date = concert.css("time").attribute("datetime").value
        binding.pry
        artist = concert.css("p.artists strong").text
        Concert.new
      end
    end
  end

end
