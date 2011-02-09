require 'spec_helper'

describe User do
#	before do
#		@user=User.new
#	end
	

  it "username must not be empty" do
		user = User.new
		user.user_name = "Haftsh"
		user.user_name.should_not be_blank
	end

  it "password must not be empty" do
		user = User.new
		user.password = " "
		user.password.should_not be_blank
	end

#  it "must have a user name" do
#    @user.user_name = 'abebe'
#    @user.should have(0).error_on(:user_name)
#  end


end
