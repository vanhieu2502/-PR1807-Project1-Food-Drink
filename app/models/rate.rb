class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :user, :product, presences: true
end
