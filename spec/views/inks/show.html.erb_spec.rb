require 'rails_helper'

RSpec.describe "inks/show", :type => :view do
  before(:each) do
    @ink = assign(:ink, Ink.create!(
      :name => "Name",
      :model => "Model",
      :manufacturer => "Manufacturer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Manufacturer/)
  end
end
