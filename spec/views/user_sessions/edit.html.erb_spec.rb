require 'spec_helper'

describe "user_sessions/edit.html.erb" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession))
  end

  it "renders the edit user_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessions_path(@user_session), :method => "post" do
    end
  end
end
