class ProductOrder < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates  :product, :quantity, presence: true
end
