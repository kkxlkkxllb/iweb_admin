require "spec_helper"

describe ManualsController do
  describe "routing" do

    it "routes to #index" do
      get("/manuals").should route_to("manuals#index")
    end

    it "routes to #new" do
      get("/manuals/new").should route_to("manuals#new")
    end

    it "routes to #show" do
      get("/manuals/1").should route_to("manuals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/manuals/1/edit").should route_to("manuals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/manuals").should route_to("manuals#create")
    end

    it "routes to #update" do
      put("/manuals/1").should route_to("manuals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/manuals/1").should route_to("manuals#destroy", :id => "1")
    end

  end
end
