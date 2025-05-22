class CreateQuestTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :quest_tasks do |t|
      t.string :title
      t.string :description
      t.bigint :quest_card_id
      t.timestamp :archived_at
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
