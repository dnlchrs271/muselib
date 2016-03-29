class CreateSongLabels < ActiveRecord::Migration
  def change
    create_table :song_labels do |t|
      t.string :title, null: false, default: 'untitled'
      t.index :title, unique: true

      t.timestamps null: false
    end
  end
end
