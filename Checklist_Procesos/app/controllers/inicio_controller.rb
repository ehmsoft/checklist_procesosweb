class InicioController < ApplicationController
  caches_page :index
  
  def index
    if usuario_signed_in?
      redirect_to rondas_path
    else
      render 'index'
    end
  end
end
