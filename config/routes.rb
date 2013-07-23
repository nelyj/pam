Pam::Application.routes.draw do
  
  resources :proyects, :shallow => :true do
    resources :movements
    resources :activities
  end
  
  root :to => "landing#index"
  
end