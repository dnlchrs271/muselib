class Genre < ActiveRecord::Base
    FOCUS_ID = 4
    RELAX_ID = 2
    SLEEP_ID = 3
    has_many :playlists
end
