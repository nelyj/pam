Pam::Application.routes.draw do
  
  resources :proyects, :shallow => :true do
    resources :movements
    resources :activities
  end
  
end