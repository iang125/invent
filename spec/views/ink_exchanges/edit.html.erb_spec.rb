require 'rails_helper'

RSpec.describe "ink_exchanges/edit", :type => :view do
  before(:each) do
    @ink_exchange = assign(:ink_exchange, InkExchange.create!(
      :ink_id => "MyString",
      :user_id => "MyString",
      :room => "MyString",
      :printer => "MyString",
      :quantity => 1,
      :emptying => false
    ))
  end

  it "renders the edit ink_exchange form" do
    render

    assert_select "form[action=?][method=?]", ink_exchange_path(@ink_exchange), "post" do

      assert_select "input#ink_exchange_ink_id[name=?]", "ink_exchange[ink_id]"

      assert_select "input#ink_exchange_user_id[name=?]", "ink_exchange[user_id]"

      assert_select "input#ink_exchange_room[name=?]", "ink_exchange[room]"

      assert_select "input#ink_exchange_printer[name=?]", "ink_exchange[printer]"

      assert_select "input#ink_exchange_quantity[name=?]", "ink_exchange[quantity]"

      assert_select "input#ink_exchange_emptying[name=?]", "ink_exchange[emptying]"
    end
  end
end
