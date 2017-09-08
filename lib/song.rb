class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def new_by_filename(file_name)
    parts = file_name.split(" - ")
    song = Song.new(parts[1])
    
  end

  def artist_name(artist_name)
    @artist = artist_name
  end
end
