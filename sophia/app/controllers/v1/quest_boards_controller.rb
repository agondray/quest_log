module V1
  class QuestBoardsController < BaseController 
    before_action :set_quest_board, only: %i[ show update destroy ]

    # GET /quest_boards
    # GET /quest_boards.json
    def index
      @quest_boards = QuestBoard.all
    end

    # GET /quest_boards/1
    # GET /quest_boards/1.json
    def show
    end

    # POST /quest_boards
    # POST /quest_boards.json
    def create
      @quest_board = QuestBoard.new(quest_board_params)

      if @quest_board.save
        render :show, status: :created, location: @quest_board
      else
        render json: @quest_board.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /quest_boards/1
    # PATCH/PUT /quest_boards/1.json
    def update
      if @quest_board.update(quest_board_params)
        render :show, status: :ok, location: @quest_board
      else
        render json: @quest_board.errors, status: :unprocessable_entity
      end
    end

    # DELETE /quest_boards/1
    # DELETE /quest_boards/1.json
    def destroy
      @quest_board.destroy!
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_quest_board
        @quest_board = QuestBoard.find(params.expect(:id))
      end

      # Only allow a list of trusted parameters through.
      def quest_board_params
        params.expect(quest_board: [ :title, :description, :deleted_at ])
      end
  end
end
