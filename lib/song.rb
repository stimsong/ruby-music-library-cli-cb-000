class Song
  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist=(artist)
  end

  def save
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    if artist != nil
      artist.add_song(self)
    end
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    new_song = self.new(name)
    new_song.save
    new_song
  end

end
