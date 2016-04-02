class Browsegenre < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
    has_many :categorizations
    has_many :genres, through: :categorizations
    has_many :playlists, through: :categorizations
end
