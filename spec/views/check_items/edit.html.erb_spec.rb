require 'rails_helper'

RSpec.describe "check_items/edit", type: :view do
  before(:each) do
    @check_item = assign(:check_item, CheckItem.create!(
      product: nil,
      favorite: nil
    ))
  end

  it "renders the edit check_item form" do
    render

    assert_select "form[action=?][method=?]", check_item_path(@check_item), "post" do

      assert_select "input[name=?]", "check_item[product_id]"

      assert_select "input[name=?]", "check_item[favorite_id]"
    end
  end
end
