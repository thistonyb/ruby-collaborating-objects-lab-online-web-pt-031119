<<<<<<< HEAD
require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file)
    artist = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = self.new(song_name)
    song.artist_name = artist
    song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end
=======
class Song
  attr_accessor :song_name

  def initialize(song_name)
    @song_name = song_name
  end


>>>>>>> 797e64393e3c5d01b6dcf00a5e833a39decc30d8
end
