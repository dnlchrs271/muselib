class RenameGenres < ActiveRecord::Migration
 def self.up
    rename_table :genrgenres, :genres
 end 
  def self.down
    rename_table :genres, :genrgenres
  end
end
