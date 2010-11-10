class CreateSesions < ActiveRecord::Migration
  def self.up
    create_table :sesions do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :sesions
  end
end
