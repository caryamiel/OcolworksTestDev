json.extract! @project, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at

json.tasks @project.tasks, :id, :name, :descriptions, :updated_at ,:user_id