class Playlist < ActiveRecord::Base
  
    #has_many :currentsongs
    has_many :song_labels
    belongs_to :genre
end 
