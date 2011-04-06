require 'spec_helper'
describe Student do
  before do
    @student=Student.new
    @student2=Student.new
    @s={:id_number=>"CE/UR0001/2003",:applicant_id=>1 }
  end

  it "should create a new instance given valid attributes" do
	 @student=Student.create!(@s)
	 @student.should be_valid
	 @student.save should be_true
  end

  it "id_number must not be blank" do
  	@student.id_number='CNS/UG123/2004'
	@student.id_number.should_not be_blank
	#@student.should have(1).error_on(:id_number)
  end
  it "applicant_id must not be blank" do
  	@student.applicant_id=@s[:applicant_id]
  	@student.id_number= @s[:id_number]
	#@student.save!
  	@student.should have(0).error_on(:applicant_id)
  end

  it "id_number must be unique" do
    @student= Student.new(@s)    
    @student.save! 
    @student2.id_number='CE/UR0001/2003'
    @student2.should have(1).error_on(:id_number)
  end

  it "applicant_id must be unique" do
    @student = Student.new(@s)
    @student.save!
    @student2.applicant_id=1
   @student2.should_not be_valid
  end
  
end
