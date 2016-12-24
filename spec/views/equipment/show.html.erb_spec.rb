require 'rails_helper'

RSpec.describe "equipment/show", :type => :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :name => "Name",
      :dop => "Dop",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Dop/)
    expect(rendered).to match(/Status/)
  end
end
