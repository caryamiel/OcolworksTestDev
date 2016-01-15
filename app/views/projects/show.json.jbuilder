json.extract! @project, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate



json.tasks @project.tasks do |task|
  json.(task, :id, :name)

  json.subtasks task.subtasks do |subtask|
    json.(subtask, :id, :name)

  	json.comments subtask.comments do |comment|
  		json.(comment, :id, :content)  
    end
  end
end