require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'testing for book status' do
      context 'testing primitive value' do
          it "expects 0 to be mapped to 'rented'" do
              book = Book.create(status: 0)
              expect(book.status).to eq('rented')
          end
          it "expects 1 to be mapped to 'stack'" do
              book = Book.create(status: 1)
              expect(book.status).to eq('stack')
          end
      end
      context 'assign enum value' do
          it "expects 'rented' to be mapped to 0" do
              book = Book.create(status: 'rented')
              expect(book.statuses[book.status]).to eq(0)
          end
          it "expects 1 to be mapped to 'stack'" do
              book = Book.create(status: 'stack')
              expect(book.statuses[book.status]).to eq(1)
          end
      end
  end
end