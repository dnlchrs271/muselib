class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genrgenres do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
