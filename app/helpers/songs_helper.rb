module SongsHelper

  def display_artist(song)
    if song.artist_name != nil
      link_to song.artist.name, artist_path(song.artist) 
    elsif  song.artist_name == nil
      link_to "Add Artist", edit_song_path(song)
    end
  end

end
