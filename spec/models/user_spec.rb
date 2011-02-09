require 'spec_helper'

describe User do
	before do
		@user=User.new
		@u={:user_name=>"abebe",:password=>"123",
			:email=>"gyohannes1@gmail.com" }
	end
	
  it "should create a new instance given valid attributes" do
	 @user=User.create!(@u)
	 @user.should be_valid
	 @user.save should be_true
  end
  
  it "user_name must not be blank" do
  	@user.user_name=''
  	@user.should have(1).error_on(:user_name)
  end
  it "password must not be blank" do
  	@user.password=''
  	@user.should have(1).error_on(:password)
  end
  
  it "email must not be blank" do
  	@user.email='gyohannes1@gmail.com'
  	@user.should have(0).error_on(:email)
  end
  
  it "email must have correct format" do
  	@user.email='gyohannes'
  	@user.should have(1).error_on(:email)
  end

end