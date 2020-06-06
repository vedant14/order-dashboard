Rails.application.routes.draw do
	resources :orders 
	devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
    root to: 'orders#index'
end
