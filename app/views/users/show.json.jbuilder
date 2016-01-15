json.extract! @user, :id, :name

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id, :project_confirm

json.friendships @user.friendships,:user_id, :friend_id

json.inverse_friendships @user.inverse_friendships, :user_id, :friend_id


