class CreatePortadas < ActiveRecord::Migration
  def self.up
    create_table :portadas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :portadas
  end
end
