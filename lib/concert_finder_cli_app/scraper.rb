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
    # binding.pry
  end

  def self.scrape_city_page(city)
    # city_page = Nokogiri::HTML(open("https://www.vividseats.com/region/#{city}/concert-tickets.html"))

    concerts = []


  end

end
