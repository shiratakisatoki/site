require 'rails_helper'

RSpec.describe "check_items/index", type: :view do
  before(:each) do
    assign(:check_items, [
      CheckItem.create!(
        product: nil,
        favorite: nil
      ),
      CheckItem.create!(
        product: nil,
        favorite: nil
      )
    ])
  end

  it "renders a list of check_items" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
