json.extract! sequencer, :id, :sequencer_name, :draft_id, :sequence_position, :created_at, :updated_at
json.url sequencer_url(sequencer, format: :json)
