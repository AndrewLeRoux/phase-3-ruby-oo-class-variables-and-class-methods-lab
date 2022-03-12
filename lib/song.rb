class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
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
        hash_ = {}
        @@genres.each do |genre|
            hash_[genre] = 0
        end
        @@genres.each do |genre|
            hash_[genre] += 1
        end
        hash_
    end

    def self.artist_count
        @@artists.tally
    end

end


Song.new("Lucifer", "Jay-Z", "rap")
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.genre_count
puts Song.artist_count