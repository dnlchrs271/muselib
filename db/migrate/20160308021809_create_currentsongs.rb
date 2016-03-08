class CreateCurrentsongs < ActiveRecord::Migration
  def change
    create_table :currentsongs do |t|
      t.string :title
      t.string :albumcover
      t.string :string
      t.string :songlength
      t.string :float
      t.string :shuffleplay
      t.string :string
      t.string :previousong
      t.string :string
      t.string :forwardsong
      t.string :repeat

      t.timestamps null: false
    end
  end
end
