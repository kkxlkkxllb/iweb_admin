require 'spec_helper'

describe "manuals/new" do
  before(:each) do
    assign(:manual, stub_model(Manual,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new manual form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => manuals_path, :method => "post" do
      assert_select "input#manual_name", :name => "manual[name]"
    end
  end
end
