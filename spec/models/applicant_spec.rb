require 'spec_helper'

describe Applicant do
  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @applicant = Applicant.new
  end
  xit "must have a full name " do
    @applicant.person.name="yared"
    @applicant.full_name.should_not be_blank
  end
end

