require 'spec_helper'

describe "user_sessions/new.html.erb" do
  before(:each) do
    assign(:user_session, stub_model(UserSession).as_new_record)
  end

  it "renders new user_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessions_path, :method => "post" do
    end
  end
end
