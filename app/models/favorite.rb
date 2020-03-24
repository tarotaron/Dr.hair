class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :post

	validates_uniqueness_of :post_id, scope: :user_id
	# post_idとuser_id の組が1組しかないようにする
end
