class Playlist < ApplicationRecord
  has_many :artists
  has_many :tracks
end
