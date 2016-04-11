require "spec_helper"

describe FabricantesController do
  describe "routing" do

    it "routes to #index" do
      get("/fabricantes").should route_to("fabricantes#index")
    end

    it "routes to #new" do
      get("/fabricantes/new").should route_to("fabricantes#new")
    end

    it "routes to #show" do
      get("/fabricantes/1").should route_to("fabricantes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fabricantes/1/edit").should route_to("fabricantes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fabricantes").should route_to("fabricantes#create")
    end

    it "routes to #update" do
      put("/fabricantes/1").should route_to("fabricantes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fabricantes/1").should route_to("fabricantes#destroy", :id => "1")
    end

  end
end
