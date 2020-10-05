require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        name: "Name",
        age: "Age",
        integer: "Integer"
      ),
      Employee.create!(
        name: "Name",
        age: "Age",
        integer: "Integer"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Age".to_s, count: 2
    assert_select "tr>td", text: "Integer".to_s, count: 2
  end
end
