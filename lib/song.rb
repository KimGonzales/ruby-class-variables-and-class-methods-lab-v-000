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
      value = 0
      genre_hash = {}
      genre = nil
      @@genres.each do | i |
         if i !=genre[i]
           genre_hash[i] = value +=1
         else

         end
       end
  end
end
