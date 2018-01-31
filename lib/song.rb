class Song

  attr_accessor :name, :genre, :artist

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name= name
    @artist= artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end


  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
      #iterate through the @@array. if the genre is the first/only one of that type in the array, make the key the genre name and
      #increment the number value by 1. If it is not unique, then do not make a new key and increment that genre value by 1.\
# @@genres =["rap", "rap", "pop"]
      genre_hash = {}
      @@genres.each do | genre |
         if !genre_hash[genre]
            genre_hash[genre] = 1
         else
           genre_hash[genre] +=1
         end
       end
       genre_hash
     end
end
