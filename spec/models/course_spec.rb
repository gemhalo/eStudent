require 'spec_helper'

describe Course do
#  pending "add some examples to (or delete) #{__FILE__}"
 
  let(:c) { Course.new }
  
  context " when created" do
    it " must have a course_title " do       
      c.course_title = "programing in c"
      c.course_title.should_not be_blank
      end
  context " when created" do
    it " must have a course_code " do
      c.course_code = "ICT101"
      c.course_code.should_not be_blank
      end
  context " when created" do
     it " must have a credit_hour " do
       c.credit_hour = "4"
       c.credit_hour.should_not be_blank
      end
      end
    end
  end 
end
