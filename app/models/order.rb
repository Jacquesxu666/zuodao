class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details, dependent: :destroy

  validates :name, present: true
  validates :address, present: true
  validates :cellphone, present: true

  scope :recent, -> {order("created_at DESC")}
end
