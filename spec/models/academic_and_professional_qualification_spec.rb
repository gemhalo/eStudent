require 'spec_helper'

describe AcademicAndProfessionalQualification do
  #pending "add some examples to (or delete) #{__FILE__}"
  xit "must have a valid date type for date_issued" do
    apq = AcademicAndProfessionalQualification.new
    apq.date_issued.should be_an_instance_of(Date)
  end
 end

