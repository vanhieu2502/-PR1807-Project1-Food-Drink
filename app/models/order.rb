class Order < ApplicationRecord
  has_many :product_orders
  validates :user, :product, :phone :total, presences: true
end
