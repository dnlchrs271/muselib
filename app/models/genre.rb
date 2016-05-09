class Genre < ActiveRecord::Base
    FOCUS_ID = 1
    has_many :playlists
end
