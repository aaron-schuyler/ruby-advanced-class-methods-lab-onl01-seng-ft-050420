class Song
  attr_accessor :name, :artist_name
  @@all = []
  def initialize(name, artist)
    @artist_name = artist
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  def self.create
    initialize(name, artist)
  end
end
