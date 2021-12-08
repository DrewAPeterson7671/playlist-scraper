class ArtistDraft < ApplicationRecord
  belongs_to :sequencer
  has_many :artists
end
