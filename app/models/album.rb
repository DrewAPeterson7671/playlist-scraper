class Album < ApplicationRecord
  belongs_to :album_list
  has_many :artists
end
