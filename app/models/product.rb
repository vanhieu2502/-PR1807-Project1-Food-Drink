class Product < ApplicationRecord
  enum kind: [:food, :drink]
  has_many :product_orders, dependent: :destroy
  has_many :orders, through: :product_orders
  has_many :rates
  has_many :comments
  has_many :categories, through: :product_categories
  has_many :product_categories
end
