require 'rails_helper'

RSpec.describe "transactions/edit", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :user_id => "MyString",
      :equipment_id => "MyString",
      :contract => "MyString"
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input#transaction_user_id[name=?]", "transaction[user_id]"

      assert_select "input#transaction_equipment_id[name=?]", "transaction[equipment_id]"

      assert_select "input#transaction_contract[name=?]", "transaction[contract]"
    end
  end
end
