require 'spec_helper'

describe "nationalities/new.html.erb" do
  before(:each) do
    assign(:nationality, stub_model(Nationality,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new nationality form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nationalities_path, :method => "post" do
      assert_select "input#nationality_name", :name => "nationality[name]"
    end
  end
end
