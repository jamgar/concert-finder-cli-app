class ConcertFinderCliApp::Scraper

  def self.get_cities
    cities = Nokogiri::HTML(open("https://www.songkick.com/session/filter_metro_area"))

    cities.css("div.popular-metro-areas ol:first-child")
    binding.pry
  end

  def self.scrape_city_page(city)
    # city_page = Nokogiri::HTML(open("https://www.vividseats.com/region/#{city}/concert-tickets.html"))

    concerts = []


  end

end
