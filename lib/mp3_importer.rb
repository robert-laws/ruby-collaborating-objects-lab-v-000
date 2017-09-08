class MP3Importer
  attr_accessor :path, :music_importer

  def initialize(path)
    @path = path
    @music_importer = Dir.glob(path + "*")
  end


end
