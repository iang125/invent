require 'rails_helper'

RSpec.describe "inks/new", :type => :view do
  before(:each) do
    assign(:ink, Ink.new(
      :name => "MyString",
      :model => "MyString",
      :manufacturer => "MyString"
    ))
  end

  it "renders new ink form" do
    render

    assert_select "form[action=?][method=?]", inks_path, "post" do

      assert_select "input#ink_name[name=?]", "ink[name]"

      assert_select "input#ink_model[name=?]", "ink[model]"

      assert_select "input#ink_manufacturer[name=?]", "ink[manufacturer]"
    end
  end
end
