class Project < ActiveRecord::Base
	has_many :task, dependent: :destroy
	belongs_to :user
end
