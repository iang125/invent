require 'rails_helper'

RSpec.describe "equipment/new", :type => :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      :name => "MyString",
      :dop => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do

      assert_select "input#equipment_name[name=?]", "equipment[name]"

      assert_select "input#equipment_dop[name=?]", "equipment[dop]"

      assert_select "input#equipment_status[name=?]", "equipment[status]"
    end
  end
end
