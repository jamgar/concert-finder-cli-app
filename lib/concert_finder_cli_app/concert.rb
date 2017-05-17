class ConcertFinderCliApp::Concert
  attr_accessor :artist, :date, :location

  @@all = []

  def initialize
    @@all << self
  end

end
