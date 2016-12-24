require 'rails_helper'

RSpec.describe "transactions/show", :type => :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :user_id => "User",
      :equipment_id => "Equipment",
      :contract => "Contract"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Equipment/)
    expect(rendered).to match(/Contract/)
  end
end
