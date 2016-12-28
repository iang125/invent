require 'rails_helper'

RSpec.describe "ink_exchanges/index", :type => :view do
  before(:each) do
    assign(:ink_exchanges, [
      InkExchange.create!(
        :ink_id => "Ink",
        :user_id => "User",
        :room => "Room",
        :printer => "Printer",
        :quantity => 1,
        :emptying => false
      ),
      InkExchange.create!(
        :ink_id => "Ink",
        :user_id => "User",
        :room => "Room",
        :printer => "Printer",
        :quantity => 1,
        :emptying => false
      )
    ])
  end

  it "renders a list of ink_exchanges" do
    render
    assert_select "tr>td", :text => "Ink".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Room".to_s, :count => 2
    assert_select "tr>td", :text => "Printer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
