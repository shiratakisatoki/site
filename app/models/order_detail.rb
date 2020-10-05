class OrderDetail < ApplicationRecord
    def self.create_items(order, line_items)
        line_items.each do |item|
            OrderDetails.create!(order_id: order.id, book_id: item.book_id, quantity: item.quantity)
            LineItem.find(item.id).delete
        end
    end
    
    def total_price
        book.price * quantity
    end
end
