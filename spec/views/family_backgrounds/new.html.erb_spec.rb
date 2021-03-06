require 'spec_helper'

describe "family_backgrounds/new.html.erb" do
  before(:each) do
    assign(:family_background, stub_model(FamilyBackground,
      :father_edu_level => "MyString",
      :mother_edu-level => "MyString",
      :father_occupation => "MyString",
      :mother_occupation => "MyString"
    ).as_new_record)
  end

  it "renders new family_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => family_backgrounds_path, :method => "post" do
      assert_select "input#family_background_father_edu_level", :name => "family_background[father_edu_level]"
      assert_select "input#family_background_mother_edu-level", :name => "family_background[mother_edu-level]"
      assert_select "input#family_background_father_occupation", :name => "family_background[father_occupation]"
      assert_select "input#family_background_mother_occupation", :name => "family_background[mother_occupation]"
    end
  end
end
