class SongLabel < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
   
    belongs_to :playlist
   dragonfly_accessor :song
end
