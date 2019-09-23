class Song 
  
  attr_accessor :artist, :genre
  attr_reader :name 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
  end 
  
end 