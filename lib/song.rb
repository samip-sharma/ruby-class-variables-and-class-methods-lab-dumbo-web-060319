require 'pry'

class Song
    @@count=0
    @@genres=[]
    @@artists=[]
    attr_reader :name, :artist, :genre
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@genres<< genre
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
        hash=Hash.new(0)
        @@genres.each {|el| hash[el]+=1}
        hash
    end
        
    def self.artist_count
        hash=Hash.new(0)
        @@artists.each {|el| hash[el]+=1}
        hash
    end

end