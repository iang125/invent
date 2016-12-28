require 'rails_helper'

RSpec.describe "inks/edit", :type => :view do
  before(:each) do
    @ink = assign(:ink, Ink.create!(
      :name => "MyString",
      :model => "MyString",
      :manufacturer => "MyString"
    ))
  end

  it "renders the edit ink form" do
    render

    assert_select "form[action=?][method=?]", ink_path(@ink), "post" do

      assert_select "input#ink_name[name=?]", "ink[name]"

      assert_select "input#ink_model[name=?]", "ink[model]"

      assert_select "input#ink_manufacturer[name=?]", "ink[manufacturer]"
    end
  end
end
