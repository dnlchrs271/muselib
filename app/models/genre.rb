class Genre < ActiveRecord::Base
    FOCUS_ID = 1
    RELAX_ID = 2
    SLEEP_ID = 3
    has_many :playlists
end
