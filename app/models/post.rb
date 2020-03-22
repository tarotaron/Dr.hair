class Post < ApplicationRecord
	belongs_to :user
	# has_many :favorites, dependent: :destroy
	# has_many :comments, dependent: :destroy
	attachment :post_image
	
	validates :title, presence: true
	validates :post_body, presence: true
end
