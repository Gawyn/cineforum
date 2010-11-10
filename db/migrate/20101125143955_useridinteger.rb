class Useridinteger < ActiveRecord::Migration
  def self.up
    remove_column :comments, :user_id
    add_column :comments, :user_id, :integer
  end

  def self.down
  end
    remove_column :comments, :user_id
    add_column :comments, :user_id, :string
end
