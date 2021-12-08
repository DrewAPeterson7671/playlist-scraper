class Artist < ApplicationRecord
  belongs_to :playlist
  belongs_to :track
  belongs_to :album
  belongs_to :album_list
  belongs_to :artist_draft
end
