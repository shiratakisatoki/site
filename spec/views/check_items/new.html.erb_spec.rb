require 'rails_helper'

RSpec.describe "check_items/new", type: :view do
  before(:each) do
    assign(:check_item, CheckItem.new(
      product: nil,
      favorite: nil
    ))
  end

  it "renders new check_item form" do
    render

    assert_select "form[action=?][method=?]", check_items_path, "post" do

      assert_select "input[name=?]", "check_item[product_id]"

      assert_select "input[name=?]", "check_item[favorite_id]"
    end
  end
end
