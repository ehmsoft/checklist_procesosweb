require "spec_helper"

describe RondasController do
  describe "routing" do

    it "routes to #index" do
      get("/rondas").should route_to("rondas#index")
    end

    it "routes to #new" do
      get("/rondas/new").should route_to("rondas#new")
    end

    it "routes to #show" do
      get("/rondas/1").should route_to("rondas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/rondas/1/edit").should route_to("rondas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/rondas").should route_to("rondas#create")
    end

    it "routes to #update" do
      put("/rondas/1").should route_to("rondas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/rondas/1").should route_to("rondas#destroy", :id => "1")
    end

  end
end
