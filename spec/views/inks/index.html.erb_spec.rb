require 'rails_helper'

RSpec.describe "inks/index", :type => :view do
  before(:each) do
    assign(:inks, [
      Ink.create!(
        :name => "Name",
        :model => "Model",
        :manufacturer => "Manufacturer"
      ),
      Ink.create!(
        :name => "Name",
        :model => "Model",
        :manufacturer => "Manufacturer"
      )
    ])
  end

  it "renders a list of inks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
  end
end
