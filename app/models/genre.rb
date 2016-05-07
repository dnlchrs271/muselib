class Genre < ActiveRecord::Base
  
    has_many :playlists
end
