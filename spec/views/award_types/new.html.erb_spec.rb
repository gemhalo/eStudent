require 'spec_helper'

describe "award_types/new.html.erb" do
  before(:each) do
    assign(:award_type, stub_model(AwardType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new award_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => award_types_path, :method => "post" do
      assert_select "input#award_type_name", :name => "award_type[name]"
    end
  end
end
