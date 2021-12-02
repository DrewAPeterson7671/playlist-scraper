json.extract! album, :id, :album_title, :year, :artist_id, :album_type, :completed, :collect, :created_at, :updated_at
json.url album_url(album, format: :json)
