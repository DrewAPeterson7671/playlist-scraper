class CreateArtistDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_drafts do |t|
      t.string :draft_name
      t.string :draft_genre
      t.bigint :artist_id

      t.timestamps
    end
  end
end
