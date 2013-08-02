require 'spec_helper'

describe "VisitaDiarias" do
  describe "GET /visita_diarias" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get visita_diarias_path
      response.status.should be(200)
    end
  end
end
