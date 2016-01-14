class Subtask < ActiveRecord::Base
	belongs_to :task
	belongs_to :project
	has_many :comments, dependent: :destroy

end
