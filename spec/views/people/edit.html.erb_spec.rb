require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString",
      :father_name => "MyString",
      :grand_father_name => "MyString",
      :gender => "MyString",
      :place_of_birth => "MyString",
      :ethnicity => 1,
      :nationality => 1,
      :marital_status => "MyString",
      :mother_full_name => "MyString",
      :photo => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "input#person_father_name", :name => "person[father_name]"
      assert_select "input#person_grand_father_name", :name => "person[grand_father_name]"
      assert_select "input#person_gender", :name => "person[gender]"
      assert_select "input#person_place_of_birth", :name => "person[place_of_birth]"
      assert_select "input#person_ethnicity", :name => "person[ethnicity]"
      assert_select "input#person_nationality", :name => "person[nationality]"
      assert_select "input#person_marital_status", :name => "person[marital_status]"
      assert_select "input#person_mother_full_name", :name => "person[mother_full_name]"
      assert_select "input#person_photo", :name => "person[photo]"
    end
  end
end
