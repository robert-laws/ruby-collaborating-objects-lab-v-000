require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    result = ""
    if all.size > 0
      binding.pry
      all.each do |a|
        if a.name == name
          result = a
          break
        else
          result = Artist.new(name)
        end
      end
    else
      result = Artist.new(name)
    end
    result
  end

  def print_songs
    songs.each do |song|
      puts song.name
    end
  end

  def save
    @@all << self
  end
end
