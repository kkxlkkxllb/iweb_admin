IwebAdmin::Application.routes.draw do

  resources :manuals

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :members, :controllers => {
    :sessions => :sessions
  }
  mount API => '/'

  get '/systems/uploads/category/:id/image/:filename', :to => 'categories#image'
  get "/systems/uploads/product/:id/image/:filename", :to => "products#image"

  get "analytics",:to => "home#analytics"

  root "home#index"
end
