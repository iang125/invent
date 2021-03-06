require 'rails_helper'

RSpec.describe "transactions/new", :type => :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :user_id => "MyString",
      :equipment_id => "MyString",
      :contract => "MyString"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input#transaction_user_id[name=?]", "transaction[user_id]"

      assert_select "input#transaction_equipment_id[name=?]", "transaction[equipment_id]"

      assert_select "input#transaction_contract[name=?]", "transaction[contract]"
    end
  end
end
