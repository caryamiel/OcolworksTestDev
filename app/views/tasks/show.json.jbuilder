json.extract! @task,:tmembers, :id, :name, :descriptions, :startDate, :dueDate, :task_priority, :task_confirmation
 json.subtasks @task.subtasks do |subtask|
    json.(subtask, :id, :name,:subtask_confirmation)
 end

 json.comments @task.comments, :user,:id, :content