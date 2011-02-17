require 'spec_helper'

describe "people/show.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "Name",
      :father_name => "Father Name",
      :grand_father_name => "Grand Father Name",
      :gender => "Gender",
      :place_of_birth => "Place Of Birth",
      :ethnicity => 1,
      :nationality => 1,
      :marital_status => "Marital Status",
      :mother_full_name => "Mother Full Name",
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Father Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Grand Father Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Place Of Birth/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Marital Status/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mother Full Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Photo/)
  end
end
