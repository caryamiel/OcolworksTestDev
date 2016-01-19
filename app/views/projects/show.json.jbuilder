json.extract! @project, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate

json.pmembers @project.pmembers, :id,:name

json.tasks @project.tasks do |task|
  json.(task, :id, :name, :descriptions, :startDate, :dueDate)

  json.subtasks task.subtasks do |subtask|
    json.(subtask, :id, :name,:subtask_confirmation)

  	json.comments subtask.comments do |comment|
  		json.(comment, :id, :content, :user_id)  
    end
  end
end