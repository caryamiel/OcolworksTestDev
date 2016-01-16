json.extract! @user, :id, :name, :user_avatar, :email 

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id, :project_confirm



	json.friends @user.friends do |friend|
  		json.(friend, :name)  
    end

    json.inverse_friends @user.inverse_friends do |inverse_friend|
  		json.(inverse_friend, :name)  
    end