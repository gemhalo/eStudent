require 'spec_helper'

describe "service_agreements/new.html.erb" do
  before(:each) do
    assign(:service_agreement, stub_model(ServiceAgreement,
      :student_id => 1,
      :service_type_id => 1,
      :class_year_id => 1,
      :academic_year_semester_id => 1
    ).as_new_record)
  end

  it "renders new service_agreement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_agreements_path, :method => "post" do
      assert_select "input#service_agreement_student_id", :name => "service_agreement[student_id]"
      assert_select "input#service_agreement_service_type_id", :name => "service_agreement[service_type_id]"
      assert_select "input#service_agreement_class_year_id", :name => "service_agreement[class_year_id]"
      assert_select "input#service_agreement_academic_year_semester_id", :name => "service_agreement[academic_year_semester_id]"
    end
  end
end
