json.extract! @project, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate

json.tasks @project.tasks, :id,:name, :descriptions, :updated_at,:dueDate, :startDate 






