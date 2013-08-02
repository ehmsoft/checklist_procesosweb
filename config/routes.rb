ChecklistProcesos::Application.routes.draw do
  
  resources :rondas do
    resources :visita_diarias
  end

  resources :juzgados

  resources :ciudades

  devise_for :usuarios

  get "inicio/index"
  get "inicio/public" # Pagina de inicio a la que se le puede hacer cache
  
  root :to => 'inicio#index'

end
