Rails.application.routes.draw do
  root 'family#index'
  resources :family
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
