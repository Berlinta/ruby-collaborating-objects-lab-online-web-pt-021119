require 'pry'

class Song
  
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end
  
  # def self.new_by_filename(filename)
  #   song = filename.split(" - ")[1]
  #   artist = filename.split(" - ")[0]
  #   new_song = self.new(song)
  #   new_song.artist_name = artist
  #   new_song
  # end 
  
    def self.new_by_filename(filename)
    song = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
end
  
  

  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  #   artist.add_song(self)
  # end

end