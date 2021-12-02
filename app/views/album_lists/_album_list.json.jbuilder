json.extract! album_list, :id, :album_list_name, :album_id, :artist_id, :album_position, :list_source, :created_at, :updated_at
json.url album_list_url(album_list, format: :json)
