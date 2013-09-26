Pam::Application.routes.draw do
  resources :archivos
  
  devise_for :users

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