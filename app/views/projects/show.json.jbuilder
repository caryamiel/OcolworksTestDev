json.extract! @project, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate

json.tasks @project.tasks, :id, :name, :descriptions, :updated_at, :project_id,:dueDate, :startDate
json.subtasks @project.subtasks, :id, :name, :subtask_confirmation