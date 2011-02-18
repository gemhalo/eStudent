require 'spec_helper'

describe "family_backgrounds/index.html.erb" do
  before(:each) do
    assign(:family_backgrounds, [
      stub_model(FamilyBackground,
        :father_edu_level => "Father Edu Level",
        :mother_edu-level => "Mother Edu Level",
        :father_occupation => "Father Occupation",
        :mother_occupation => "Mother Occupation"
      ),
      stub_model(FamilyBackground,
        :father_edu_level => "Father Edu Level",
        :mother_edu-level => "Mother Edu Level",
        :father_occupation => "Father Occupation",
        :mother_occupation => "Mother Occupation"
      )
    ])
  end

  it "renders a list of family_backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Edu Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Edu Level".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Occupation".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Occupation".to_s, :count => 2
  end
end
