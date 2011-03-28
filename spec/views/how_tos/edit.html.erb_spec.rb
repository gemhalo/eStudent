require 'spec_helper'

describe "how_tos/edit.html.erb" do
  before(:each) do
    @how_to = assign(:how_to, stub_model(HowTo,
      :title => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders the edit how_to form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => how_tos_path(@how_to), :method => "post" do
      assert_select "input#how_to_title", :name => "how_to[title]"
      assert_select "input#how_to_detail", :name => "how_to[detail]"
    end
  end
end
