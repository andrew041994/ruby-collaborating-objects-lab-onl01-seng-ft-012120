class MP3Importer
attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    @filename = []
    file = Dir['**/*.mp3']
    file.each do |filename|
      @filename << File.basename("#{filename}")
      end
      @filename
  end

  def import
    files.each {|filename|Song.new_by_filename(filename)}
  end


end
