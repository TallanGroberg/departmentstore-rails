Rails.application.routes.draw do

  root 'shop#index'
  resources :shop

end
