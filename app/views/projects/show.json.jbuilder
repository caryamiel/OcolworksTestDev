json.extract! @project, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate

json.pmembers @project.pmembers, :id,:name, :user_avatar


json.projtalks @project.projtalks do |projtalk|
  json.(projtalk, :id, :user_id, :project_id, :name)

    json.talkresps projtalk.talkresps do |talkresp|
      json.(talkresp, :id,:talkcontent)
    end
end

json.tasks @project.tasks do |task|
  json.(task, :id, :name, :descriptions, :startDate, :dueDate)

	json.tmembers task.tmembers do |tmember|
		json.(tmember, :id, :name)
	end	  

  json.subtasks task.subtasks do |subtask|
    json.(subtask, :id, :name,:subtask_confirmation)

  	json.comments subtask.comments do |comment|
  		json.(comment, :id, :content)  
    end
  end
end