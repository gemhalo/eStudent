require 'spec_helper'

describe "service_agreements/index.html.erb" do
  before(:each) do
    assign(:service_agreements, [
      stub_model(ServiceAgreement,
        :student_id => 1,
        :service_type_id => 1,
        :class_year_id => 1,
        :academic_year_semester_id => 1
      ),
      stub_model(ServiceAgreement,
        :student_id => 1,
        :service_type_id => 1,
        :class_year_id => 1,
        :academic_year_semester_id => 1
      )
    ])
  end

  it "renders a list of service_agreements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
