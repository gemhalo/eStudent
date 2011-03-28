require 'spec_helper'

describe Student do
  before do
		@student=Student.new
    @student2=Student.new
		@s={:id_number=>"CE/UR0001",:applicant_id=>1 }
	end

  it "should create a new instance given valid attributes" do
	 @student=Student.create!(@s)
	 @student.should be_valid
	 @student.save should be_true
  end

  it "id_number must not be blank" do
  	@student.id_number=''
  	@student.should have(1).error_on(:id_number)
  end
  it "applicant_id must not be blank" do
  	@student.applicant_id=''
  	@user.should have(1).error_on(:applicant_id)
  end

  it "id_number must be unique" do
    @student.id_number='CE/UR0001/2003'
    @student2.id_number='CE/UR0001/2003'
  	@student2.should_not be_valid
  end

  it "applicant_id must be unique" do
  	@student.applicant_id=1
    @student2.applicant_id=1
  	@student2.should_not be_valid
  end
  
end
