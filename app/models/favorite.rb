class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post

  # post_idとuser_id の組が1組しかないようにする
  validates_uniqueness_of :post_id, scope: :user_id
end
