class Song
  attr_accessor :name, :artist_name
  @@all = []
  def initialize(name="", artist="")
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
    self.new
  end
  def self.new_by_name(name)
    self.new(name)
  end
  def self.new_by_name(name)
    new_song = self.new(name)
    @@all << new_song
  end
end
