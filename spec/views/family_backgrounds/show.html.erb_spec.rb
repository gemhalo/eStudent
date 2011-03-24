require 'spec_helper'

describe "family_backgrounds/show.html.erb" do
  before(:each) do
    @family_background = assign(:family_background, stub_model(FamilyBackground,
      :father_edu_level => "Father Edu Level",
      :mother_edu-level => "Mother Edu Level",
      :father_occupation => "Father Occupation",
      :mother_occupation => "Mother Occupation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Edu Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Edu Level/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Occupation/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Occupation/)
  end
end
