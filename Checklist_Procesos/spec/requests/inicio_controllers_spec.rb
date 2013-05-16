require 'spec_helper'

describe "Pagina Inicio" do
  it "Debe tener advertencia de sitio restringido" do
    visit root_path
    page.should have_content 'Acceso Restringido'
  end
  it "Debe tener advertencia de solo personal autorizado" do
    visit root_path
    page.should have_content 'Solo Personal Autorizado'
  end
end

