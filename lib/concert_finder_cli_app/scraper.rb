class ConcertFinderCliApp::Scraper

  def self.scrape_city_page(url)
    city_page = Nokogiri::HTML(open(url))

    concerts = []

    
  end

end
