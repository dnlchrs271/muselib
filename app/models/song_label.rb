class SongLabel < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
   
    belongs_to :playlists
   dragonfly_accessor :song
end
