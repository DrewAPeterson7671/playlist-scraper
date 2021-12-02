class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre1
      t.string :genre2
      t.string :genre3
      t.string :subgenre1
      t.string :subgenre2
      t.string :subgenre3
      t.string :era
      t.timestamps
    end
  end
end
