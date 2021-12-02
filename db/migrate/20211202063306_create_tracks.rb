class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :track_title
      t.bigint :artist_id
      t.bigint :album_id
      t.bigint :track_number

      t.timestamps
    end
  end
end
