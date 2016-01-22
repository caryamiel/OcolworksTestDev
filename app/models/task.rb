class Task < ActiveRecord::Base
	has_many :subtasks, dependent: :destroy
	belongs_to :project
	belongs_to :user

	has_many :taskmemberships
	has_many :tmembers, :through => :taskmemberships
end
