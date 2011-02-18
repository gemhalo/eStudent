require 'spec_helper'

describe Applicant do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "must have a full name " do
    applicant = Applicant.new
    applicant.person.name="yared"
    applicant.save!
    applicant.full_name.should_not be_blank   
  end
end
