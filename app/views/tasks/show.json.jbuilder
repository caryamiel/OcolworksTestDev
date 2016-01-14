json.extract! @task, :id

json.subtasks @task.subtasks, :id, :name, :updated_at, :subtask_confirmation, :task_id