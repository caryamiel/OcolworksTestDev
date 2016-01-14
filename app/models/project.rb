class Project < ActiveRecord::Base
	has_many :tasks, dependent: :destroy
	has_many :subtasks,:through => :tasks
	belongs_to :user


  #	has_many :projectmemberships, dependent: :destroy
#	has_many :members, through: :projectmemberships, source: :user
end
