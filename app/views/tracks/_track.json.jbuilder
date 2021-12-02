json.extract! track, :id, :track_title, :artist_id, :album_id, :track_number, :created_at, :updated_at
json.url track_url(track, format: :json)
