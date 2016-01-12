json.extract! @user, :id, :name, :email, :phonenumber, :created_at, :updated_at

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at