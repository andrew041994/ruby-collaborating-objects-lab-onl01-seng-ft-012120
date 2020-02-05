
require 'pry'
class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    name = File.basename("#{filename}",".*")
    # puts name
    name = name.split("-")
    name = name.collect(&:strip)
    new_song = Song.new(name[1])
    new_song
    # binding.pry

  end
end
