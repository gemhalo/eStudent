require 'spec_helper'

describe "campuses/new.html.erb" do
  before(:each) do
    assign(:campus, stub_model(Campus,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new campus form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campuses_path, :method => "post" do
      assert_select "input#campus_name", :name => "campus[name]"
    end
  end
end
