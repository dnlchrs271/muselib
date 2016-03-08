class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :artistname
      t.string :string
      t.string :shuffleplay
      t.string :string

      t.timestamps null: false
    end
  end
end
