IwebAdmin::Application.routes.draw do

	mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
	devise_for :members, :controllers => {
		:sessions => :sessions
	}

	get "analytics",:to => "home#analytics"

	root "home#index"
end
