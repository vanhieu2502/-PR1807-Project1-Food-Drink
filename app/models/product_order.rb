class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates  :user, :total, presences: true
end
