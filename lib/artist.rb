require 'pry'
class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) #song = #<Song:0x007fd39e41ca70 @song="Hello">
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name) #song_name = "Rolling in the Deep"
    song = Song.new(song_name)
    #<Song:0x007fcc95a48ff8 @artist=#<Artist:0x007fcc95a491b0 @array_of_songs=[#<Song:0x007fcc95a48ff8 ...>],@name="Adele">,@song="Rolling in the Deep">
    @songs << song
    song.artist = self
    @@song_count += 1
    # binding.pry
  end

  def self.song_count
    @@song_count
  end
end

#######################################

# class Artist
#   attr_accessor :name
#
#   def initialize(name)
#     @name = name
#     @songs = []
#   end
#
#   def add_song(song_title)
#     @songs << song_title
#   end
#
#   def songs
#     @songs
#   end
# end
#
# class Song
#   attr_accessor :artist, :name, :genre
#
#   def initialize(name, genre)
#     @name = name
#     @genre = genre
#   end
# end
#
# jay_z = Artist.new("Jay-Z") #initialize
# jay_z.add_song("99 Problems") #puts instance into @songs array
# jay_z.add_song("Crazy in Love") #puts instance into @songs array
# jay_z.songs #=> ["99 Problems", "Crazy in Love"]
#
# ninetynine_problems = Song.new("99 Problems")
# ninetynine_problems.artist = jay_z
#
# ninetynine_problems.artist.name
