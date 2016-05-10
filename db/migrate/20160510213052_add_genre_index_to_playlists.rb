class AddGenreIndexToPlaylists < ActiveRecord::Migration
  def change
    add_reference :playlists, :genre, index: true, foreign_key: true
  end
end
