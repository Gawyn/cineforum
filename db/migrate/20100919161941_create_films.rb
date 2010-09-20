class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :title
      t.string :director
      t.string :actors
      t.integer :year
      t.string :country
      t.text :body
      t.integer :vots
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
