class ConcertFinderCliApp::CLI

  def call
    puts "Welcome to Concert Finder!"
    puts ""
    puts "Choose a city to view upcoming concerts:"
    print_cities
    input = gets.strip
    print_concerts(input.to_i)
  end

  def print_cities
    cities = ConcertFinderCliApp::Scraper.get_cities
    cities.each_with_index { |city, index| puts "#{index + 1}. #{city.name}" }
  end

  def print_concerts(index)
    cities = ConcertFinderCliApp::Scraper.get_cities
    concerts = ConcertFinderCliApp::Scraper.get_concerts(cities[index - 1])
    concerts.each do |concert|
      puts "--------------------------------------------------"
      puts ""
      puts "Date:     #{concert.date}"
      puts "Artist:   #{concert.artist}"
      puts "Location: #{concert.location}"
      puts ""
      puts "--------------------------------------------------"
    end
  end

end
