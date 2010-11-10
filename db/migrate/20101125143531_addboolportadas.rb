class Addboolportadas < ActiveRecord::Migration
  def self.up
    add_column :noticias, :portada, :boolean
    add_column :sesions, :portada, :boolean
  end

  def self.down
    remove_column :noticias, :portada
    remove_column :sesions, :portada
  end
end
