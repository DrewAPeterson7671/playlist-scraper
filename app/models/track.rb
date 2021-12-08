class Track < ApplicationRecord
  has_many :artists
  has_many :albums
  belongs_to :playlist
end
