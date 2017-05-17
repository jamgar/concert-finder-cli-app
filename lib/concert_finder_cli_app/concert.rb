class ConcertFinderCliApp::Concert
  attr_accessor :artist, :date, :location

  @@all = []

  def initialize(artist, date, location)
    @artist = artist
    @date = date
    @location = location
    @@all << self
  end

end
