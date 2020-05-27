Rails.application.routes.draw do
	devise_for :users, controllers: {
	  sessions: 'users/sessions',
	  registrations: 'users/registrations'
	}
	root 'home#top'

	resources :rooms, only: [:show, :create, :destroy]
end
