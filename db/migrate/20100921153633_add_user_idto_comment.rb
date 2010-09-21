class AddUserIdtoComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :user_id, :string
  end

  def self.down
    remove_column :comments, :user_id
  end
end
