require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      employee: nil,
      name: "MyString",
      age: 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input[name=?]", "customer[employee_id]"

      assert_select "input[name=?]", "customer[name]"

      assert_select "input[name=?]", "customer[age]"
    end
  end
end
