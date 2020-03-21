class Style < ApplicationRecord
	belongs_to :length
	belongs_to :form
	attachment :style_image

	validates :style_image, presence: true
	validates :style_body, presence: true
	validates :style_name, presence: true
end
