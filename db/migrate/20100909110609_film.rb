class Film < ActiveRecord::Migration
  def self.up
  end

  def self.down
	drop_table "Film"
  end
end
