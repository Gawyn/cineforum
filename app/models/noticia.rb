class Noticia < ActiveRecord::Base
    has_attached_file :image,
	 :storage => :s3,
	 :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
	 :path => ":attachment/noticia/:id/:style.:extension"
	has_many :comments
end
