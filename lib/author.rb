class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post) #post = <Post:0x007f9508af3210 @title="Hello World">
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    @posts
  end

  def add_post_by_title(title) #title = "My Great Blog Post"
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end

######################################################################
#
# class Artist
#   attr_accessor :name
#
#   @@song_count = 0
#
#   def initialize(name)
#     @name = name
#     @array_of_songs = []
#   end
#
#   def add_song(song) #song = instance
#     @array_of_songs << song
#     @@song_count += 1
#     # binding.pry
#   end
#
#   def songs
#     @array_of_songs
#   end
#
#   def add_song_by_name(song_name)
#     name = Song.new(song_name)
#     @array_of_songs << name
#     name.artist = self
#     @@song_count += 1
#     # binding.pry
#   end
#
#   def self.song_count
#     @@song_count
#   end
# end
