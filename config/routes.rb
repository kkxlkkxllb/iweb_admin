IwebAdmin::Application.routes.draw do

  

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  devise_for :members, :controllers => {
		:sessions => :sessions
	}

  root "home#index"
end
