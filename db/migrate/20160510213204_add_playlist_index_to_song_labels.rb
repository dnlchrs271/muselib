class AddPlaylistIndexToSongLabels < ActiveRecord::Migration
  def change
    add_reference :song_labels, :playlist, index: true, foreign_key: true
  end
end
