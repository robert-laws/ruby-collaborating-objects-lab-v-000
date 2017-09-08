require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    parts = file_name.split(" - ")
    song = Song.new(parts[1])
    a = self.artist_name(parts[0])
    @artist = a
    song
  end

  def self.artist_name(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
    artist
  end
end
