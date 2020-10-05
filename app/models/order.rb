class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :order_details, dependent: :destroy
end
