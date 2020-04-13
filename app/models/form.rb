class Form < ApplicationRecord
  has_many :styles, dependent: :destroy
  attachment :form_image

  validates :form_name, presence: true
  validates :form_image, presence: true
end
