json.extract! playlist, :id, :playlist_name, :artist_id, :track_id, :list_year, :chart_position, :source, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
