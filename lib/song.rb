class Song
  attr_accessor :name, :artist_name
  @@all = []
  def self.all
    @@all
  end
  def initialize
    @@all << self
  end
  def save
    self.class.all << self
  end
  def self.create
    self.new
    self.save
  end
  def self.new_by_name(name)
    self.new
    self.name = name
  end
  def self.create_by_name(name)
    self.new
    self.name = name
    self.save
  end
end
