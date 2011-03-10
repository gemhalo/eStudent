require 'spec_helper'

describe "relevant_publications/edit.html.erb" do
  before(:each) do
    @relevant_publication = assign(:relevant_publication, stub_model(RelevantPublication,
      :description => "MyString",
      :publication_title => "MyString",
      :attachment_file_name => "MyString",
      :attachment_content_type => "MyString",
      :attachment_file_size => 1,
      :applicant_id => 1
    ))
  end

  it "renders the edit relevant_publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relevant_publications_path(@relevant_publication), :method => "post" do
      assert_select "input#relevant_publication_description", :name => "relevant_publication[description]"
      assert_select "input#relevant_publication_publication_title", :name => "relevant_publication[publication_title]"
      assert_select "input#relevant_publication_attachment_file_name", :name => "relevant_publication[attachment_file_name]"
      assert_select "input#relevant_publication_attachment_content_type", :name => "relevant_publication[attachment_content_type]"
      assert_select "input#relevant_publication_attachment_file_size", :name => "relevant_publication[attachment_file_size]"
      assert_select "input#relevant_publication_applicant_id", :name => "relevant_publication[applicant_id]"
    end
  end
end
