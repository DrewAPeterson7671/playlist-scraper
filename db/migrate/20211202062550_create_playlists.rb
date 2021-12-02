class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :playlist_name
      t.bigint :artist_id
      t.bigint :track_id
      t.bigint :list_year
      t.bigint :chart_position
      t.string :source

      t.timestamps
    end
  end
end
