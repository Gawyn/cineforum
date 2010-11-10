class Sesion < ActiveRecord::Base
    has_attached_file :image,
	 :storage => :s3,
	 :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
	 :path => ":attachment/sesion/:id/:style.:extension"
end
