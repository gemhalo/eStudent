require 'spec_helper'

describe "people/index.html.erb" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
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
      ),
      stub_model(Person,
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
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Father Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Grand Father Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Place Of Birth".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Marital Status".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mother Full Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
