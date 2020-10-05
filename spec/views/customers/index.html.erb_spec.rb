require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        employee: nil,
        name: "Name",
        age: 2
      ),
      Customer.create!(
        employee: nil,
        name: "Name",
        age: 2
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
