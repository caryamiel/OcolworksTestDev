class Subtask < ActiveRecord::Base
	belongs_to :task
	has_many :comments, dependent: :destroy
end
