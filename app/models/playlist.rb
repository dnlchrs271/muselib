class Playlist < ActiveRecord::Base
    has_many :categorizations
    has_many :currentsongs, through: :categorizations
    has_many :song_labels, through: :categorizations
    belongs_to :genres
end
