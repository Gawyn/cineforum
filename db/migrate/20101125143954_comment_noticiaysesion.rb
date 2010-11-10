class CommentNoticiaysesion < ActiveRecord::Migration
  def self.up
    add_column :comments, :noticia_id, :integer
    add_column :comments, :sesion_id, :integer
  end

  def self.down
    remove_column :comments, :noticia_id
    remove_column :comments, :sesion_id
  end
end
