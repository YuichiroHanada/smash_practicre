Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :character, only: [:show]  do
     resources :tweets 
   end 
  root to: "character#index"
end
