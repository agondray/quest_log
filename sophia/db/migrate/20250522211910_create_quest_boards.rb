class CreateQuestBoards < ActiveRecord::Migration[8.0]
  def change
    create_table :quest_boards do |t|
      t.string :title
      t.string :description
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
