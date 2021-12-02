json.extract! artist_draft, :id, :draft_name, :draft_genre, :artist_id, :created_at, :updated_at
json.url artist_draft_url(artist_draft, format: :json)
