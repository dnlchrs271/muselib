class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.string :recentlyplayedartists
      t.string :string
      t.string :followers
      t.string :int
      t.int :playlists
      t.string :following
      t.string :int
      t.string :name
      t.string :follow

      t.timestamps null: false
    end
  end
end
