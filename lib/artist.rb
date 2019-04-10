require 'pry'
class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      end
    end
<<<<<<< HEAD
    artist = self.new(name)
    @@all << artist
    artist
  end

  def print_songs
    self.songs.each {|song| puts "#{song.name}"}
=======
    Artist.new(name)
  end

  def print_songs
    self.songs.each {|song| puts "#{song.song_name}"}
>>>>>>> 797e64393e3c5d01b6dcf00a5e833a39decc30d8
  end
end
