class Length < ApplicationRecord
	# has_many :styles, dependent: :destroy
    attachment :length_image

	validates :length_name, presence: true
	validates :length_image, presence: true
end
