require 'spec_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"

	before do
		@user=User.new
		@u={:username=>"abebe",:password=>"123",
			:email=>"gyohannes1@gmail.com" }
	end

  it "should create a new instance given valid attributes" do
	 @user=User.create!(@u)
	 @user.should be_valid
	 @user.save should be_true
  end

  it "username must not be blank" do
  	@user.username=''
  	@user.should have(1).error_on(:username)
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

