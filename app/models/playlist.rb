class Playlist < ActiveRecord::Base
    has_many :categorizations
    has_many :currentsongs, through: :categorizations
end
