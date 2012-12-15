class AddCanBeToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :profile_id, :profile_type
    add_column :users, :details_id, :integer
    add_column :users, :details_type, :string
    add_column :users, :can_be_type, :string
  end
end
