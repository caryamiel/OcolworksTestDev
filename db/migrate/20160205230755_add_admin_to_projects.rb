class AddAdminToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :admin, :string
  end
end
