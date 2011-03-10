require 'spec_helper'

describe "admissions/edit.html.erb" do
  before(:each) do
    @admission = assign(:admission, stub_model(Admission,
      :admission_type_id => 1,
      :enrollment_type_id => 1,
      :enrollment_mode_type_id => 1
    ))
  end

  it "renders the edit admission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admissions_path(@admission), :method => "post" do
      assert_select "input#admission_admission_type_id", :name => "admission[admission_type_id]"
      assert_select "input#admission_enrollment_type_id", :name => "admission[enrollment_type_id]"
      assert_select "input#admission_enrollment_mode_id", :name => "admission[enrollment_mode_id]"
    end
  end
end
