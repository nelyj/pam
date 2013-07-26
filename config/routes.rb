Pam::Application.routes.draw do
	
	resources :cargas, controller: 'uploads' do 
		member do 
			get 'procesar', :as => 'procesar'
		end
	end

	resources :proyects, :shallow => :true do
	resources :movements
	resources :activities
	end
	
	root :to => "landing#index"
	match '/global_activities' => "landing#activities"
	match '/global_movements' => "landing#movements"
	
end