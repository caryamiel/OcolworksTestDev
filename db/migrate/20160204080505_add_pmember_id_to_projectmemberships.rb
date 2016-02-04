class AddPmemberIdToProjectmemberships < ActiveRecord::Migration
  def change
    add_column :projectmemberships, :pmember_id, :integer
  end
end
