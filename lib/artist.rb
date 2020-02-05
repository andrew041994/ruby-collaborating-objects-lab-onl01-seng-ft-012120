require 'pry'

class Artist
  attr_accessor :name, :artist
  @@all = []
  # @@all.name.uniq
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)

    artist = self.all.find {|i| i.name == name}
        if artist
          artist
        else
          name = Artist.new(name)
        end
  end

  def print_songs
    @songs.each {|i| puts i.name}
  end
end
