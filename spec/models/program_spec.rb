require 'spec_helper'

describe Program do
#  pending "add some examples to (or delete) #{__FILE__}"
let(:p) { Program.new }

  context " when created" do
    it " must have a program_id_number " do
      p.program_id_number = "BSC001"
      p.program_id_number.should_not be_blank
      end
  context " when created" do
    it " must have a program_name " do
      p.program_name  = "Bsc in computer science"
      p.program_name .should_not be_blank
      end
      end
  context " when created" do
     it " must have a level " do
       p.level = "under graduate"
       p.level.should_not be_blank
      end
      end
  context " when created" do
    it " must have a enrollment_type " do
      p.enrollment_type = "1"
      p.enrollment_type.should_not be_blank
      end
      end
  context " when created" do
    it " must have a mode " do
      p.mode = "Full time"
      p.mode.should_not be_blank
      end
  context " when created" do
     it " must have a award_type " do
       p.award_type = "Bsc"
       p.award_type.should_not be_blank
      end
      end
  context " when created" do
    it " must have a duration " do
      p.duration = "3"
      p.duration.should_not be_blank
      end
  context " when created" do
    it " must have a total_credit_hour " do
      p.total_credit_hour = "112"
      p.total_credit_hour.should_not be_blank
      end
      end
      end

    end
  end

end
