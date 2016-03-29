class Currentsong < ActiveRecord::Base
    has_many :categorizations
    has_many :playlists, through: :categorizations
end
