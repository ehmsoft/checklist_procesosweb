require "spec_helper"

describe CiudadesController do
  describe "routing" do

    it "routes to #index" do
      get("/ciudades").should route_to("ciudades#index")
    end

    it "routes to #new" do
      get("/ciudades/new").should route_to("ciudades#new")
    end

    it "routes to #show" do
      get("/ciudades/1").should route_to("ciudades#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ciudades/1/edit").should route_to("ciudades#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ciudades").should route_to("ciudades#create")
    end

    it "routes to #update" do
      put("/ciudades/1").should route_to("ciudades#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ciudades/1").should route_to("ciudades#destroy", :id => "1")
    end

  end
end
