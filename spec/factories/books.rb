FactoryBot.define do
  factory :book do
    title { "MyString" }
    status { 1 }
  end
end

class Book < ApplicationRecord
    enum status: [:rented, :stack]
end
