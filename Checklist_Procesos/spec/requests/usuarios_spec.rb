# -*- coding: utf-8 -*-
require 'spec_helper'

describe "Usuarios" do
  it "Debe dejar iniciar sesión" do
    usuario = FactoryGirl.create(:usuario)
    visit "/usuarios/sign_in"
    within("#new_usuario") do
      fill_in 'Email', :with => usuario.email
      fill_in 'Password', :with => usuario.password
    end
    click_button 'Iniciar Sesión'
    page.should have_content 'Salir'
  end
  
  it "Debe rechazar email erróneo" do
    usuario = FactoryGirl.create(:usuario)
    visit "/usuarios/sign_in"
    within("#new_usuario") do
      fill_in 'Email', :with => usuario.email
      fill_in 'Password', :with => usuario.password + '1'
    end
    click_button 'Iniciar Sesión'
    page.should have_content 'Invalid email or password'
  end
  
end
