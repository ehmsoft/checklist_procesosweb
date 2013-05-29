# -*- coding: utf-8 -*-
require "spec_helper"

def iniciar_sesion
  
end

def cerrar_sesion
  visit root_path
  click_button 'Salir'
end