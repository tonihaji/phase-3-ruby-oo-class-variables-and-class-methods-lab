class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  class << self
      def count
        @@count
      end
  
      def artists
        @@artists.uniq
      end
  
      def genres
        @@genres.uniq
      end
  
      def genre_count
        count = Hash.new(0)
        @@genres.each { |genre| count[genre] += 1 }
        count
      end
  
      def artist_count
        count = Hash.new(0)
        @@artists.each { |artist| count[artist] += 1 }
        count
      end
    end
end