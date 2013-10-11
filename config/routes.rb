Pam::Application.routes.draw do
  resources :archivos
  
  devise_for :users

    
  devise_scope :user do
    get 'confirmar', to: 'devise/confirmations#new', as: :confirmar
    get 'recuperar', to: 'devise/passwords#new', as: :recuperar
    get 'registrate', to: 'devise/registrations#new', as: :registrate
    get 'entrar', to: 'devise/sessions#new', as: :entrar
    get 'salir', to: 'devise/sessions#destroy', as: :salir
  end

	resources :cargas, controller: 'uploads' do 
		member do 
			get 'procesar', :as => 'procesar'
		end
	end

	resources :proyects, :shallow => :true do
	resources :movements
	resources :activities
	end
	
	root :to => "archivos#index"

	match '/actividades' => 'activities#activities', as: 'actividades'
	match '/movimientos' => 'movements#movements', as: 'movimientos'
	match '/dashboard' => 'landing#index', as: 'dashboard'
	match '/global_activities' => "landing#activities"
	match '/global_movements' => "landing#movements"
	
end