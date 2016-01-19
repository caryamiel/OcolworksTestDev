class AddProjectmemberedIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :projectmembered_id, :integer
  end
end
