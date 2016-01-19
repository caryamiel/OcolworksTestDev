class Projectmembership < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	belongs_to :pmember, :class_name => "User"
	belongs_to :project, :class_name => "Project"
end
