class Task < ActiveRecord::Base
	has_many :subtask, dependent: :destroy
	belongs_to :project
end
