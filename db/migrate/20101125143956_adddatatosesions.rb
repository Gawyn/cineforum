class Adddatatosesions < ActiveRecord::Migration
  def self.up
    add_column :sesions, :datasesion, :date
  end

  def self.down
    remove_column :sesions, :datasesion
  end
end
