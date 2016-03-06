class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :text
      t.string :username
      t.string :string

      t.timestamps null: false
    end
  end
end
