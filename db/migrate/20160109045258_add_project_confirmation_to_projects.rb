class AddProjectConfirmationToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :project_confirmation, :boolean
  end
end
