json.extract! @task, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at

json.subtasks @task.subtasks, :id, :name, :updated_at