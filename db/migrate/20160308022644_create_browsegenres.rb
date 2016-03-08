class CreateBrowsegenres < ActiveRecord::Migration
  def change
    create_table :browsegenres do |t|
      t.string :newreleases
      t.string :string
      t.string :category
      t.string :string
      t.string :search
      t.string :string

      t.timestamps null: false
    end
  end
end
