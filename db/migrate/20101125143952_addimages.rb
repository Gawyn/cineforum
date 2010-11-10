class Addimages < ActiveRecord::Migration
  def self.up
    add_column :sesions, :image_file_name, :string
    add_column :sesions, :image_content_type, :string
    add_column :sesions, :image_file_size, :integer
    add_column :sesions, :image_updated_at, :datetime
    add_column :noticias, :image_file_name, :string
    add_column :noticias, :image_content_type, :string
    add_column :noticias, :image_file_size, :integer
    add_column :noticias, :image_updated_at, :datetime
  end

  def self.down
    remove_column :sesions, :image_file_name
    remove_column :sesions, :image_content_type
    remove_column :sesions, :image_file_size
    remove_column :sesions, :image_updated_at
    remove_column :noticias, :image_file_name
    remove_column :noticias, :image_content_type
    remove_column :noticias, :image_file_size
    remove_column :noticias, :image_updated_at
  end
end
