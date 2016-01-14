json.extract! @task, :id

json.tasks @task.subtasks, :id, :name, :updated_at, :subtask_confirmation, :task_id