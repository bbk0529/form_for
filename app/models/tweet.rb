class Tweet < ApplicationRecord
	mount_uploader :photo_url, PhotoUploader


	belongs_to :user

end
