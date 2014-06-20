class Image < ActiveRecord::Base
	belongs_to :article
	has_attached_file :photo, 
                    styles: { :large => "500", :medium => "300x300>", :thumb => "100x100>"}, 
                    storage: :s3, 
                    s3_credentials: {
                      access_key_id: Rails.application.secrets.secret_key_id,
                      secret_access_key: Rails.application.secrets.secret_access_key
                      },
                    bucket: 'ps_development'
end
