Rails.application.routes.draw do
  resources :installations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "installations#index"
  get '/about', to: 'pages#about'
end
