require "spec_helper"

describe VisitaDiariasController do
  describe "routing" do

    it "routes to #index" do
      get("/visita_diarias").should route_to("visita_diarias#index")
    end

    it "routes to #new" do
      get("/visita_diarias/new").should route_to("visita_diarias#new")
    end

    it "routes to #show" do
      get("/visita_diarias/1").should route_to("visita_diarias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/visita_diarias/1/edit").should route_to("visita_diarias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/visita_diarias").should route_to("visita_diarias#create")
    end

    it "routes to #update" do
      put("/visita_diarias/1").should route_to("visita_diarias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/visita_diarias/1").should route_to("visita_diarias#destroy", :id => "1")
    end

  end
end
