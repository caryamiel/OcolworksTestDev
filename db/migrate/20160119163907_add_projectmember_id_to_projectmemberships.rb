class AddProjectmemberIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :projectmember_id, :integer
  end
end
