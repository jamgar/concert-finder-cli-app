class ConcertFinderCliApp::Scraper

  def self.get_cities
    cities = Nokogiri::HTML(open("https://www.songkick.com/session/filter_metro_area"))

    city_names = []

    cities.css("div.popular-metro-areas ol:first-child li").each_with_index do |item, index|
      if index == 0
        city_names << item.css("h3").text
      else
        city_names << item.css("a").text
      end
    end
    binding.pry
  end

  def self.scrape_city_page(city)
    # city_page = Nokogiri::HTML(open("https://www.vividseats.com/region/#{city}/concert-tickets.html"))

    concerts = []


  end

end
