require 'spec_helper'

  describe  Campus do
    # pending "add some examples to (or delete) #{__FILE__}"
    # pending "add some examples to (or delete) #{__FILE__}"
    before do
      @c = Campus.new
    end
    context "When created" do
      it " must have first name" do
        @c.name = "Adhaki"
        @c.name.should_not be_blank
      end
    end
  
    context "When saving" do
      it " empty name should not be valid" do
        @c.name = "adhaki"
        @c.should be_valid
      end
    end
  end 


