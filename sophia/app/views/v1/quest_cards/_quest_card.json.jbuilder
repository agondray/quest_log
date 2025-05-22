json.extract! quest_card, :id, :title, :description, :quest_board_id, :archived_at, :deleted_at, :created_at, :updated_at
json.url quest_card_url(quest_card, format: :json)
