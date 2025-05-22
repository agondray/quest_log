class QuestTasksController < ApplicationController
  before_action :set_quest_task, only: %i[ show update destroy ]

  # GET /quest_tasks
  # GET /quest_tasks.json
  def index
    @quest_tasks = QuestTask.all
  end

  # GET /quest_tasks/1
  # GET /quest_tasks/1.json
  def show
  end

  # POST /quest_tasks
  # POST /quest_tasks.json
  def create
    @quest_task = QuestTask.new(quest_task_params)

    if @quest_task.save
      render :show, status: :created, location: @quest_task
    else
      render json: @quest_task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quest_tasks/1
  # PATCH/PUT /quest_tasks/1.json
  def update
    if @quest_task.update(quest_task_params)
      render :show, status: :ok, location: @quest_task
    else
      render json: @quest_task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quest_tasks/1
  # DELETE /quest_tasks/1.json
  def destroy
    @quest_task.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quest_task
      @quest_task = QuestTask.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def quest_task_params
      params.expect(quest_task: [ :title, :description, :quest_card_id, :archived_at, :deleted_at ])
    end
end
