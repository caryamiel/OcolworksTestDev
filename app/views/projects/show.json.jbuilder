json.extract! @project, :id
json.tasks @project.tasks, :id, :name, :descriptions, :updated_at ,:user_id