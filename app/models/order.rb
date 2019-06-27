class Order < ApplicationRecord
  has_many :product_orders
  before_validation :update_subtotal
  validates :user, :product_orders, :subtotal, presence: true
  belongs_to :user
  has_many :products, through: :product_orders

  def update_subtotal
    self.subtotal = product_orders.collect{|po| po.valid? ? (po.quantity*po.product.price) : 0}.sum
  end
end
