Rails.application.routes.draw do

  get '/users/sign_up' => 'home_page#home'
  get '/nutriologos/sign_up' => 'home_page#home'
  get '/pacientes/sign_up' => 'home_page#home'

  devise_for :pacientes
  devise_for :nutriologos
  devise_for :users

  resources :sesions

  mount RailsAdmin::Engine => '/user', as: 'rails_admin'
  get 'static_pages/home'
  get 'nutriologo_pages/mis_sesiones'
  get 'pacientes_pages/mis_sesiones'
  get '/users' => 'user#index', as: :user_root
  get '/admin', to: redirect('/users/sign_in')
  get '/nutriologos' => 'nutriologo_pages#mis_sesiones', as: :nutriologo_root
  get '/pacientes' => 'pacientes_pages#mis_sesiones', as: :paciente_root
  get 'pacientes_pages/programarCita'
  get '/nutriologo_pages/mis_pacientes'



  get '/metas_paciente/:id', to: 'nutriologo_pages#metas_paciente'
  get '/metas_cita/:id', to: 'nutriologo_pages#metas_cita'
  get '/sesiones_paciente/:id', to: 'nutriologo_pages#sesiones_paciente'


  namespace :user do
    root 'user#index'
  end

  namespace :nutriologo do
    root 'nutriologo_pages#mis_sesiones'
  end

  namespace :paciente do
    root 'pacientes_pages#mis_sesiones'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home_page#home'
end
