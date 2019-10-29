Rails.application.routes.draw do
  root to: "installations#index"
  resources :installations
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
