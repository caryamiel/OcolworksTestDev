json.extract! @user, :id, :name, :email, :phonenumber

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id