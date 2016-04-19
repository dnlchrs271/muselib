class SongLabel < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
   
    has_many :playlists
   dragonfly_accessor :song
end
