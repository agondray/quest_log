module V1
  class QuestCardsController < BaseController
    before_action :set_quest_card, only: %i[ show update destroy ]

    # GET /quest_cards
    # GET /quest_cards.json
    def index
      @quest_cards = QuestCard.all
    end

    # GET /quest_cards/1
    # GET /quest_cards/1.json
    def show
    end

    # POST /quest_cards
    # POST /quest_cards.json
    def create
      @quest_card = QuestCard.new(quest_card_params)

      if @quest_card.save
        render :show, status: :created, location: @quest_card
      else
        render json: @quest_card.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /quest_cards/1
    # PATCH/PUT /quest_cards/1.json
    def update
      if @quest_card.update(quest_card_params)
        render :show, status: :ok, location: @quest_card
      else
        render json: @quest_card.errors, status: :unprocessable_entity
      end
    end

    # DELETE /quest_cards/1
    # DELETE /quest_cards/1.json
    def destroy
      @quest_card.destroy!
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_quest_card
        @quest_card = QuestCard.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def quest_card_params
        params.expect(quest_card: [ :title, :description, :quest_board_id, :archived_at, :deleted_at ])
      end
  end
end
