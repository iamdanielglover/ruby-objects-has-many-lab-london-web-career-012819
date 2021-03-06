require 'pry'

class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

end

# Artist
#   #new x
#     is initialized with a name (FAILED - 1)
#   #name x
#     has an attr_accessor for name (FAILED - 2)
#   #songs x
#     has many songs (FAILED - 3)
#   #add_song x
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist (FAILED - 4)
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 5)
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists (FAILED - 6)
