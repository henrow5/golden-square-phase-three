class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
    #@track = [title, artist]
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
    return true if @title.include? keyword
    return true if @artist.include? keyword
    #return true if @track.include? keyword
  end
end