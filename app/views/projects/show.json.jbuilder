json.extract! @project, :id, :name,:description, :project_confirm

json.tasks @project.tasks, :id, :name, :descriptions, :updated_at ,:user_id, :project_id
