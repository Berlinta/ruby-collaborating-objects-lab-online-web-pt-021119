
class Artist
  attr_accessor :name, :songs
  @@all = []  #stores all instances of Artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song    

  end

  def save
    @@all << self

  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.all.detect { |singer| singer.name == name } || Artist.new(name)
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end


# class Artist
  
#   attr_accessor :name 
#   attr_reader :songs
  
#   @@all = []
  
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
  
#   def add_song(song)
#     @songs << song
#   end
  
#   def save
#     @@all << self
#   end
  
#   def self.all
#     @@all
#   end
  
#   def self.find_or_create_by_name(name)
#     self.all.detect { |singer| singer.name == name } || Artist.new(name)
#   end
  
#   def self.create(name)
#     artist = Artist.new(name)
#     artist.save
#     artist
#   end
  
#   def print_songs
#     @songs.each { |song| puts song.name }
#   end
  
# end