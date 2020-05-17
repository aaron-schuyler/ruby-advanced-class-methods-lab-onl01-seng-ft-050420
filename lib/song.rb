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
  def self.create_by_name(name)
    new_song = self.new(name)
    @@all << new_song
    new_song
  end
  def self.find_by_name(name)
    self.all.find {|s| s.name == name}
  end
  def self.find_or_create_by_name(name)
    found = self.find_by_name(name)
    if found == NIL
      found = self.create_by_name(name)
    end
    found
  end 
  def self.alphabetical
    self.all.sort_by { |a,b| a.name <=> b.name}
  end
end
