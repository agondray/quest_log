require "test_helper"

class QuestBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quest_board = quest_boards(:one)
  end

  test "should get index" do
    get quest_boards_url, as: :json
    assert_response :success
  end

  test "should create quest_board" do
    assert_difference("QuestBoard.count") do
      post quest_boards_url, params: { quest_board: { deleted_at: @quest_board.deleted_at, description: @quest_board.description, title: @quest_board.title } }, as: :json
    end

    assert_response :created
  end

  test "should show quest_board" do
    get quest_board_url(@quest_board), as: :json
    assert_response :success
  end

  test "should update quest_board" do
    patch quest_board_url(@quest_board), params: { quest_board: { deleted_at: @quest_board.deleted_at, description: @quest_board.description, title: @quest_board.title } }, as: :json
    assert_response :success
  end

  test "should destroy quest_board" do
    assert_difference("QuestBoard.count", -1) do
      delete quest_board_url(@quest_board), as: :json
    end

    assert_response :no_content
  end
end
