require 'rails_helper'

RSpec.describe "equipment/edit", :type => :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :name => "MyString",
      :dop => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do

      assert_select "input#equipment_name[name=?]", "equipment[name]"

      assert_select "input#equipment_dop[name=?]", "equipment[dop]"

      assert_select "input#equipment_status[name=?]", "equipment[status]"
    end
  end
end
