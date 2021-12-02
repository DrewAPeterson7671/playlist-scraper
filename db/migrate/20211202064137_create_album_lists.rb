class CreateAlbumLists < ActiveRecord::Migration[5.2]
  def change
    create_table :album_lists do |t|
      t.string :album_list_name
      t.bigint :album_id
      t.bigint :artist_id
      t.bigint :album_position
      t.string :list_source

      t.timestamps
    end
  end
end
