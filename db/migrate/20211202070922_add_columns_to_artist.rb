class AddColumnsToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column(:artists, :major_genre, :string)
    add_column(:artists, :pop_list, :boolean)
    add_column(:artists, :greatest_hits, :boolean)
    add_column(:artists, :album_cycle, :string)
    add_column(:artists, :current_album, :string)
    add_column(:artists, :last_track, :string)
    add_column(:artists, :finished, :boolean)
    add_column(:artists, :catalogued, :string)
    add_column(:artists, :catalogue_priority, :bigint)
    add_column(:artists, :collected, :string)
    add_column(:artists, :collection_priority, :string)
  end
end
