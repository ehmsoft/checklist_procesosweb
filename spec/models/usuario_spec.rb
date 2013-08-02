# -*- coding: utf-8 -*-
require 'spec_helper'

describe Usuario do
  it "Tiene un factory válido" do
    FactoryGirl.build(:usuario).should be_valid
  end
  
  it "Un usuario sin contraseña debe ser inválido" do
    FactoryGirl.build(:usuario, password: nil).should_not be_valid
  end
  
  it "Debe dejar crear un usuario" do
    FactoryGirl.create(:usuario).should be_valid
  end
  
  it "No debe dejar crear un usuario repetido" do
    a = Usuario.new(email: "prueba@gmail.com")
    a.password = "12345678"
    a.save!
    b = Usuario.new(email: "prueba@gmail.com")
    b.password = "12345678"
    expect(b.save).to eq(false)
  end
end
