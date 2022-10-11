class Picture < ApplicationRecord
	mount_uploader :image, ImageUploader 
	belongs_to :user
	validates :content, presence: true, length: { in: 1..140 }
end
