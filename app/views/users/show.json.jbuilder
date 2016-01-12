json.extract! @user, :id

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at