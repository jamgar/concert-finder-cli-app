class ConcertFinderCliApp::CLI

  def call
    puts "Welcome to Concert Finder!"
    print_cities
  end

  def print_cities
    puts ""
    cities = ConcertFinderCliApp::Scraper.get_cities

  end

end
