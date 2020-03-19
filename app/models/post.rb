class Post < ApplicationRecord
	belongs_to :user
	has_many :favorites, dependent: :destroy
	has_many :comments, dependent: :destroy

	validates title, predence: true
	validates post_body, predence: true
end
