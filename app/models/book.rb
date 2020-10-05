class Book < ApplicationRecord
    has_many :taggings, dependent: :destroy
    has_many :tags, through: :taggings
    has_many :line_items
    has_many :order_details
end
