class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :user, :product, :content, presences: true
end
