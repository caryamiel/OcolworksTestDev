json.extract! @user, :id, :name, :user_avatar, :email 

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id, :project_confirm


    json.friends @user.friends do |friend|
      json.(friend, :id, :name, :user_avatar, :email, :phonenumber)
    end


    json.pending_friends @user.pending_friends do |pending_friend|
  		json.(pending_friend,:id,:user_avatar, :name, :email,)  
    end


               
      

json.friend_requests @user.friend_requests do |friend_request|
    json.(friend_request,:id, :user_id, :friend_id, :approved, :user)

end


    json.joined_projects @user.joined_projects, :id, :name


