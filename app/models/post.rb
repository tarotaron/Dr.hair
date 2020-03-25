class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
		# favoritesのFKとして持ってるuser_idの中にuserのidが存在しているか
	end
	attachment :post_image
	
	validates :title, presence: true
	validates :post_body, presence: true
end
