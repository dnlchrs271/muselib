class Categorization < ActiveRecord::Base
  belongs_to :post
  belongs_to :tag
  belongs_to :currentsong
  belongs_to :playlist
  belongs_to :song_label
  belongs_to :browsegenres
  belongs_to :genres
end
