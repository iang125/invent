require 'rails_helper'

RSpec.describe "ink_exchanges/show", :type => :view do
  before(:each) do
    @ink_exchange = assign(:ink_exchange, InkExchange.create!(
      :ink_id => "Ink",
      :user_id => "User",
      :room => "Room",
      :printer => "Printer",
      :quantity => 1,
      :emptying => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ink/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Room/)
    expect(rendered).to match(/Printer/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end
