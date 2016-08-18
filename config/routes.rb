Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do 
  	root to: 'dashboard#index'
    resources :movies
  	get "movies-a33cc281-6475-4ba6-b08f-f59f8a9d6532" => "movies#export_movies"
  end

end