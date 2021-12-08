class AlbumList < ApplicationRecord
  has_many :albums
  has_many :artists
end
