require 'spec_helper'

describe  Department do
 # pending "add some examples to (or delete) #{__FILE__}"
 # pending "add some examples to (or delete) #{__FILE__}"
 before do
   @dept = Department.new
 end
 context "When created" do
    it " must have first name" do
        @dept.name = "Adhaki"
        @dept.name.should_not be_blank
    end
 end
context "When saving" do
    it " empty name should not be valid" do
        @dept.name = "adhaki"
        @dept.should be_valid
    end
end
end
