require 'rails_helper'

RSpec.describe "transactions/index", :type => :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :user_id => "User",
        :equipment_id => "Equipment",
        :contract => "Contract"
      ),
      Transaction.create!(
        :user_id => "User",
        :equipment_id => "Equipment",
        :contract => "Contract"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment".to_s, :count => 2
    assert_select "tr>td", :text => "Contract".to_s, :count => 2
  end
end
