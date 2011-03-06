require 'spec_helper'

describe Curriculum do
#  pending "add some examples to (or delete) #{__FILE__}"
let(:c) { Curriculum.new }

  context " when created" do
    it " must have a course_id " do
      c.course_id = "ICT101"
      c.course_id.should_not be_blank
end   
   end
  context " when created" do
    it " must have a program_id " do
      c.program_id = "Bsc101"
      c.program_id.should_not be_blank
end   
   end
  context " when created" do
    it " must have a course_type " do
      c.course_type = "Active"
      c.course_type.should_not be_blank
end   
   end
  context " when created" do
    it " must have a semester_id " do
      c.semester_id = "1"
      c.semester_id.should_not be_blank
end      
end
  context " when created" do
    it " must have a class_year_id " do
      c.class_year_id = "2003"
      c.class_year_id.should_not be_blank
      end
      end
   end 
