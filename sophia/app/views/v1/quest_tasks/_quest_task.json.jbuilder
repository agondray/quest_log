json.extract! quest_task, :id, :title, :description, :quest_card_id, :archived_at, :deleted_at, :created_at, :updated_at
json.url quest_task_url(quest_task, format: :json)
