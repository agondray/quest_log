json.extract! quest_board, :id, :title, :description, :deleted_at, :created_at, :updated_at
json.url quest_board_url(quest_board, format: :json)
