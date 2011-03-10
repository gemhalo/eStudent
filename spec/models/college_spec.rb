require 'spec_helper'

describe  College do
 # pending "add some examples to (or delete) #{__FILE__}"
 # pending "add some examples to (or delete) #{__FILE__}"
 before do
   @co = College.new
 end
 context "When created" do
    it " must have first name" do
        @co.name = "Adhaki"
        @co.name.should_not be_blank
    end
 end
context "When saving" do
    it " empty name should not be valid" do
        @co.name = "adhaki"
        @co.should be_valid
    end
end
end
