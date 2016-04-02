class Genre < ActiveRecord::Base
    belongs_to :browsegenres
    has_many :playlists, through: :categorizations
    
end
