class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :album_title
      t.bigint :year
      t.bigint :artist_id
      t.string :album_type
      t.boolean :completed
      t.string :collect

      t.timestamps
    end
  end
end
