class ConcertFinderCliApp::Scraper

  def self.scrape_city_page(city)
    city_page = Nokogiri::HTML(open("https://www.vividseats.com/region/#{city}/concert-tickets.html"))

    concerts = []
    

  end

end
