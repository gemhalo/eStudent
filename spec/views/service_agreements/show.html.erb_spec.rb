require 'spec_helper'

describe "service_agreements/show.html.erb" do
  before(:each) do
    @service_agreement = assign(:service_agreement, stub_model(ServiceAgreement,
      :student_id => 1,
      :service_type_id => 1,
      :class_year_id => 1,
      :academic_year_semester_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
