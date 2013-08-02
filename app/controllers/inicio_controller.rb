class InicioController < ApplicationController
  caches_page :public
  
  def index
    if usuario_signed_in?
      redirect_to rondas_path 
    else
      #Se redirige a una accion para poder hacerle cache
      redirect_to action: :public
    end
  end
  
  def public
    #Pagina de inicio
    render :public
  end
  
end
