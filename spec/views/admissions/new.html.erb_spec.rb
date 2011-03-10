require 'spec_helper'

describe "admissions/new.html.erb" do
  before(:each) do
    assign(:admission, stub_model(Admission,
      :admission_type_id => 1,
      :enrollment_type_id => 1
    ).as_new_record)
  end

  it "renders new admission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admissions_path, :method => "post" do
      assert_select "input#admission_admission_type_id", :name => "admission[admission_type_id]"
      assert_select "input#admission_enrollment_type_id", :name => "admission[enrollment_type_id]"
    end
  end
end
