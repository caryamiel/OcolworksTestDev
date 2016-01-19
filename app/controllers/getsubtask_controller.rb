class GetsubtaskController < ApplicationController
  def create
  		task_id = params [:task_id]
		@subtask =  Subtask.where(subtask.task_id= task_id)
		render json: {status: :success, subtask: @subtask}
	
  end

end
