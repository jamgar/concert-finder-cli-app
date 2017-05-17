class ConcertFinderCliApp::CLI

  def call
    puts "Welcome to Concert Finder!"
    start
  end

  def start
    puts ""
    puts "What major city in the U.S. would you like to check for concerts?"
    input = get.strip
    ConcertFinderCliApp::Scraper.scrape_city_page(input)

  end

end
