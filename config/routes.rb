Rails.application.routes.draw do


 	resources :orders do
		resource :order_follow, module: :orders
	end

	devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
    root to: 'orders#index'


    namespace :api do
    	namespace :v1 do 
	    	resources :orders
    	end
    end

end
