class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    has_many :books, through: :line_items
    
    def add_book(book_id)
        line_items.find_or_initialize_by(book_id: book_id)
    end
    
    def total_price
        line_items.to_a.sum { |item| item.total_price }
    end
    
    def total_number
        line_items.to_a.sum { |item| item.quantity }
    end
end
