Rails.application.routes.draw do
  resources :users
  #resources :freq
  get "/freq/:id =>", to: 'freq#freq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
