class ConcertFinderCliApp::CLI

  def call
    puts "Welcome to Concert Finder!"
    print_cities
  end

  def print_cities
    puts ""
    cities = ConcertFinderCliApp::Scraper.get_cities
    puts "Choose a city to view upcoming concerts:"
    cities.each_with_index { |city, index| puts "#{index + 1}. #{city.name}" }
    input = gets.strip
  end

end
