Rails.application.routes.draw do

  root 'shops#index'

  #
  # get '/shops/:id/edit', to "shops#edit"
  # get '/shops/:id', to "shops#show"
  # get '/shops/new', to "shops#new"
  # get '/shops', to "shops#index"
  resources :shops do
    resources :depts
  end

end
