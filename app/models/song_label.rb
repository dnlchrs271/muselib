class SongLabel < ActiveRecord::Base
    validates :title, presence: true, uniqueness: true
   
    belongs_to :playlist
   dragonfly_accessor :song
   
  extend Dragonfly::Model::Validations


  # Check the file extension
  validates_property :ext, of: :song, as: 'mp3'
  
  # ..or actually analyse the format with imagemagick..
  validates_property :format, of: :song, in: ['mp3']


  # ..or you might want to use image_changed? method..
  validates_property :format, of: :song, as: 'mp3', if: :song_changed?
   
end
