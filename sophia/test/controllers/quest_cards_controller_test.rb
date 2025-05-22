require "test_helper"

class QuestCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quest_card = quest_cards(:one)
  end

  test "should get index" do
    get quest_cards_url, as: :json
    assert_response :success
  end

  test "should create quest_card" do
    assert_difference("QuestCard.count") do
      post quest_cards_url, params: { quest_card: { archived_at: @quest_card.archived_at, deleted_at: @quest_card.deleted_at, description: @quest_card.description, quest_board_id: @quest_card.quest_board_id, title: @quest_card.title } }, as: :json
    end

    assert_response :created
  end

  test "should show quest_card" do
    get quest_card_url(@quest_card), as: :json
    assert_response :success
  end

  test "should update quest_card" do
    patch quest_card_url(@quest_card), params: { quest_card: { archived_at: @quest_card.archived_at, deleted_at: @quest_card.deleted_at, description: @quest_card.description, quest_board_id: @quest_card.quest_board_id, title: @quest_card.title } }, as: :json
    assert_response :success
  end

  test "should destroy quest_card" do
    assert_difference("QuestCard.count", -1) do
      delete quest_card_url(@quest_card), as: :json
    end

    assert_response :no_content
  end
end
