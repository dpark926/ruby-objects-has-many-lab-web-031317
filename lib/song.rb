require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name) #song = "Hello"
    @name = name
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end
end
