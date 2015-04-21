AdvertApp::Application.routes.draw do
  devise_for :users

  resources :adverts

  root to: 'adverts#index'
end
