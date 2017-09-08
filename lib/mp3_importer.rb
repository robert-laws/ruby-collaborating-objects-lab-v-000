class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    self.files
  end

  def files
    files = Dir.glob(@path + "/*")
    files = files.collect { |file| file.split("/").last }
  end

  def import
    
  end
end
