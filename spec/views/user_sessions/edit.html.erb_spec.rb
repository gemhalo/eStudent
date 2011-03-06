require 'spec_helper'

describe "user_sessions/edit.html.erb" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit user_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessions_path(@user_session), :method => "post" do
      assert_select "input#user_session_username", :name => "user_session[username]"
      assert_select "input#user_session_password", :name => "user_session[password]"
    end
  end
end
