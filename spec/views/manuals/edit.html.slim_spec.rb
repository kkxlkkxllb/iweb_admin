require 'spec_helper'

describe "manuals/edit" do
  before(:each) do
    @manual = assign(:manual, stub_model(Manual,
      :name => "MyString"
    ))
  end

  it "renders the edit manual form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => manuals_path(@manual), :method => "post" do
      assert_select "input#manual_name", :name => "manual[name]"
    end
  end
end
