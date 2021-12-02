class CreateSequencers < ActiveRecord::Migration[5.2]
  def change
    create_table :sequencers do |t|
      t.string :sequencer_name
      t.bigint :draft_id
      t.bigint :sequence_position

      t.timestamps
    end
  end
end
