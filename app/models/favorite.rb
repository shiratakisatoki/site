class Favorite < ApplicationRecord
    has_many :check_items, dependent: :destroy
    
    def add_product(product_id)
        check_items.find_or_initialize_by(product_id)
    end
end
