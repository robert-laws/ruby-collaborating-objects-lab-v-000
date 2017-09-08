require 'pry'
class MP3Importer
  attr_accessor :path
  attr_reader :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    files = Dir.glob(@path + "/*")
    files = files.collect { |file| file.split("/").last }
  end

  def import
    self.files
    binding.pry
    @files.each do |file|
      binding.pry
      parts = file.split(" - ")
      artist = Artist.find_or_create_by_name(parts[0])
      artist.add_song(parts[1])
    end
  end
end
