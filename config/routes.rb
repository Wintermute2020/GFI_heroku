Rails.application.routes.draw do



  root :to => "visitors#index"

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  devise_for :users
  resources :users do
	  resources :profiles
  end



  resource :pages do
	  member do
		  get :help
		  get :contact_us
	  end
  end


  resources :offers

  resources :locations


  resources :requests

  resources :profiles

#  resources :locations

  resources :requests


  resources :pictures



  resources :messages do
	  member do
		  post :new
		  get :newoffer

	  end
	  collection do
		  get :reply
	  end
  end

  resources :conversations do
	  member do
		  get  :reply
		  post :reply
		  post :trash
		  post :untrash
	  end
	  collection do
		  get :sentbox
		  get :trashbin
		  post :empty_trash
	  end
  end




end