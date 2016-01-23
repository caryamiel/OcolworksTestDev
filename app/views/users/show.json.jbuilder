json.extract! @user, :id, :name, :user_avatar, :email 

json.projects @user.projects, :id, :name, :descriptions, :startDate, :dueDate, :created_at, :updated_at, :user_id, :project_confirm


	json.active_friends @user.passive_friends do |active_friend|
  		json.(active_friend,:id,:user_avatar, :name, :email)  
    end

    json.passive_friends @user.passive_friends do |passive_friend|
  		json.(passive_friend,:id,:user_avatar, :name, :email)  
    end

    json.pending_friends @user.pending_friends do |pending_friend|
  		json.(pending_friend,:id,:user_avatar, :name, :email)  
    end

    json.requested_friendships @user.requested_friendships do |requested_friendship|
  		json.(requested_friendship,:id,:user_avatar, :name, :email)  
  				
  		json.passive_friendships @user.passive_friendships do |passive_friendship|
  			json.(passive_friendship,:id,:user_id, :approved)
  		end

    end

    json.joined_projects @user.joined_projects, :id, :name



