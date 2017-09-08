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
    @files.each do |file|
    
    end
  end
end
