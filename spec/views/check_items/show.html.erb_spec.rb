require 'rails_helper'

RSpec.describe "check_items/show", type: :view do
  before(:each) do
    @check_item = assign(:check_item, CheckItem.create!(
      product: nil,
      favorite: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
