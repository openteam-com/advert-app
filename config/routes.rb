AdvertApp::Application.routes.draw do
  devise_for :users

  resources :adverts
end
