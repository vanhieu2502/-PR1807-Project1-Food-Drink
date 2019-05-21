class Product < ApplicationRecord
  has_many :product_orders, dependent: :destroy
  has_many :rates
  has_many :comments
  has_many :categores, throught: :product_categories
  has_many :product_categories
  validates :user, :price, presence: true	
end
