class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :order_status
  has_many :order_items

  before_validation :set_order_status, on: :create
  before_save :update_subtotal

  def subtotal
      order_items.collect { |oi | oi.valid? ? (oi.quantity * oi.price) : 0}.sum
  end

  private
    def set_order_status
      self.order_status_id = 1 if self.order_status.id.nil?
    end

    def update_subtotal
      self[:subtotal] = subtotal
    end
end
