class SubtasksController < ApplicationController
  before_action :set_subtask, only: [:show, :edit, :update, :destroy]
  before_action :set_project, only: [:show,:create,:index]
  before_action :set_task, only: [:show,:create,:index]
  skip_before_filter :verify_authenticity_token
  # GET /subtasks
  # GET /subtasks.json
  def index
    @subtasks = Subtask.all
    render json: @subtasks
  end

  # GET /subtasks/1
  # GET /subtasks/1.json
  def show
    render json: @subtask
  end

  # GET /subtasks/new
  def new
    @subtask = Subtask.new
  end

  # GET /subtasks/1/edit
  def edit
  end

  # POST /subtasks
  # POST /subtasks.json
  def create
    @subtask = Subtask.new(subtask_params)
    @subtask.task_id = @task.id
      if @subtask.save
        render json: {status: :success, subtask: @subtask}
      else
        render json: {status: :failsed, subtask: @subtask}
      end
  end

  # PATCH/PUT /subtasks/1
  # PATCH/PUT /subtasks/1.json
  def update
    respond_to do |format|
      if @subtask.update(subtask_params)
        format.html { redirect_to @subtask, notice: 'Subtask was successfully updated.' }
        format.json { render :show, status: :ok, location: @subtask }
      else
        format.html { render :edit }
        format.json { render json: @subtask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtasks/1
  # DELETE /subtasks/1.json
  def destroy
    @subtask.destroy
    respond_to do |format|
      format.html { redirect_to subtasks_url, notice: 'Subtask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtask
      @subtask = Subtask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtask_params
      params.require(:subtask).permit(:name)
    end
    def set_project
      @project = Project.find(params[:project_id])
    end
    def set_task
      @task = Task.find(params[:task_id])
    end
end
