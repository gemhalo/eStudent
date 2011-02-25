require 'spec_helper'

describe "user_sessions/show.html.erb" do
  before(:each) do
    @user_session = assign(:user_session, stub_model(UserSession))
  end

  it "renders attributes in <p>" do
    render
  end
end
