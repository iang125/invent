require 'rails_helper'

RSpec.describe "equipment/index", :type => :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(
        :name => "Name",
        :dop => "Dop",
        :status => "Status"
      ),
      Equipment.create!(
        :name => "Name",
        :dop => "Dop",
        :status => "Status"
      )
    ])
  end

  it "renders a list of equipment" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Dop".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
