require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :user_name => "MyString",
      :hashed_password => "MyString",
      :salt => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_user_name", :name => "user[user_name]"
      assert_select "input#user_hashed_password", :name => "user[hashed_password]"
      assert_select "input#user_salt", :name => "user[salt]"
      assert_select "input#user_email", :name => "user[email]"
    end
  end
end
