ChecklistProcesos::Application.routes.draw do
  
  resources :rondas do
    resources :visita_diarias
  end

  resources :juzgados

  resources :ciudades

  devise_for :usuarios

  get "inicio/index"

  root :to => 'inicio#index'

end
