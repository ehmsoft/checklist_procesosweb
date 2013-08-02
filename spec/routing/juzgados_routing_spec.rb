require "spec_helper"

describe JuzgadosController do
  describe "routing" do

    it "routes to #index" do
      get("/juzgados").should route_to("juzgados#index")
    end

    it "routes to #new" do
      get("/juzgados/new").should route_to("juzgados#new")
    end

    it "routes to #show" do
      get("/juzgados/1").should route_to("juzgados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/juzgados/1/edit").should route_to("juzgados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/juzgados").should route_to("juzgados#create")
    end

    it "routes to #update" do
      put("/juzgados/1").should route_to("juzgados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/juzgados/1").should route_to("juzgados#destroy", :id => "1")
    end

  end
end
