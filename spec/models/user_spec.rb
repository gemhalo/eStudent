require 'spec_helper'

describe User do
  #pending "add some examples to (or delete) #{__FILE__}"
  xit "username must not be empty" do
    user = User.new
    user.user_name="ygetachew"
    user.user_name.should_not be_blank
  end
  xit "password must not be empty" do
    user = User.new 
    user.password="1"
    user.password.should_not be_blank
  end
end
