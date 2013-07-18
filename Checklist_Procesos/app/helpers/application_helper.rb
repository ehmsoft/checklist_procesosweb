module ApplicationHelper
    #Posicion de la barra de navegacion que ha sido seleccionado
  def seleccionarMenu(item)
    @menu = item
  end
  def menuseleccionado
    @menu ||= :rondas
  end
end
