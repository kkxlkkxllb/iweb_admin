require 'spec_helper'

describe "Manuals" do
  describe "GET /manuals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get manuals_path
      response.status.should be(200)
    end
  end
end
