require 'pry'
class Song
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = file_name.split(" - ")
    song = self.new(parts[1])
    song.artist = parts[0]
    song
  end

  def artist=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end
end
