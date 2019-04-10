require 'pry'
class MP3Importer
<<<<<<< HEAD
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir["#{@path}/*.mp3"].collect do|file|
=======
  attr_accessor :path, :files, :size

  def initialize(path)
    @path = path

  end

  def files
    @files = Dir."#{@path}/*.mp3".collect do|file|
>>>>>>> 797e64393e3c5d01b6dcf00a5e833a39decc30d8
       file.gsub("#{@path}/", "")
     end
  end

<<<<<<< HEAD
  def import
    self.files.each{|file| Song.new_by_filename(file)}
  end
=======
>>>>>>> 797e64393e3c5d01b6dcf00a5e833a39decc30d8
end
