json.extract! @project, :id, :name,:descriptions ,:project_confirm

json.tasks @project.tasks, :id, :name, :descriptions, :updated_at, :project_id
