require "test_helper"

class QuestTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quest_task = quest_tasks(:one)
  end

  test "should get index" do
    get quest_tasks_url, as: :json
    assert_response :success
  end

  test "should create quest_task" do
    assert_difference("QuestTask.count") do
      post quest_tasks_url, params: { quest_task: { archived_at: @quest_task.archived_at, deleted_at: @quest_task.deleted_at, description: @quest_task.description, quest_card_id: @quest_task.quest_card_id, title: @quest_task.title } }, as: :json
    end

    assert_response :created
  end

  test "should show quest_task" do
    get quest_task_url(@quest_task), as: :json
    assert_response :success
  end

  test "should update quest_task" do
    patch quest_task_url(@quest_task), params: { quest_task: { archived_at: @quest_task.archived_at, deleted_at: @quest_task.deleted_at, description: @quest_task.description, quest_card_id: @quest_task.quest_card_id, title: @quest_task.title } }, as: :json
    assert_response :success
  end

  test "should destroy quest_task" do
    assert_difference("QuestTask.count", -1) do
      delete quest_task_url(@quest_task), as: :json
    end

    assert_response :no_content
  end
end
