# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Ciudades" do
  
  describe "GET /ciudades" do
    it "No debe dejar ver las ciudades sin iniciar sesion" do
      visit ciudades_path
      page.should have_content "You need to sign in or sign up before continuing"
    end
    it "Iniciar sesion y listar ciudades" do
      usuario = FactoryGirl.create(:usuario)
      visit "/usuarios/sign_in"
      within("#new_usuario") do
        fill_in 'Email', :with => usuario.email
        fill_in 'Password', :with => usuario.password
      end
      click_button 'Iniciar Sesión'
      visit ciudades_path
      page.should have_content "Lista de Ciudades"
    end
  end
  
  describe "Crear Ciudades" do
    it "Debe dejar crear una ciudad" do
      usuario = FactoryGirl.create(:usuario)
      visit "/usuarios/sign_in"
      within("#new_usuario") do
        fill_in 'Email', :with => usuario.email
        fill_in 'Password', :with => usuario.password
      end
      click_button 'Iniciar Sesión'
      visit new_ciudad_path
      within("#new_ciudad") do
        fill_in 'Nombre', with: "Pereira"
        fill_in 'Departamento', with: "Risaralda"
        click_button 'Aceptar'
      end
      page.should have_content "Pereira"
    end
  end
  
  describe "Ver y eliminar ciudades" do
    ciudad = FactoryGirl.create(:ciudad)
    it "Debe dejar ver una ciudad" do
      usuario = FactoryGirl.create(:usuario)
      visit "/usuarios/sign_in"
      within("#new_usuario") do
        fill_in 'Email', :with => usuario.email
        fill_in 'Password', :with => usuario.password
      end
      click_button 'Iniciar Sesión'
      visit ciudades_path
      click_link 'Ver'
      page.should have_content "Pereira"
    end
    it "Debe dejar eliminar", :js => true do
      usuario = FactoryGirl.create(:usuario)
      visit "/usuarios/sign_in"
      within("#new_usuario") do
        fill_in 'Email', :with => usuario.email
        fill_in 'Password', :with => usuario.password
      end
      click_button 'Iniciar Sesión'
      visit ciudades_path
      click_link 'Eliminar'
      page.driver.browser.switch_to.alert.accept
      page.should_not have_content "Pereira"
    end
  end
  
end
