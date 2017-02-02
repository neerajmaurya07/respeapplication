Rails.application.routes.draw do
  resources :articales
  root 'articales#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
