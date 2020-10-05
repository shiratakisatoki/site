class CheckItem < ApplicationRecord
  belongs_to :product
  belongs_to :favorite
end
