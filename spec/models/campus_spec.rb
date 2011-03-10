require 'spec_helper'

describe Campus do
  #pending "add some examples to (or delete) #{__FILE__}"
 let(:a) { Campus.new }
context "when created " do 
    it "must have a name " do
   a.name = "adhaki"
  a.name.should_not be_blank
end
end 
end
