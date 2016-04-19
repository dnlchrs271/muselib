class AddSongFileToSong < ActiveRecord::Migration
  def change
    add_column :song_labels, :song_uid,  :string
    add_column :song_labels, :song_name, :string 
  end
end
