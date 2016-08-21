Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations, :passwords]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do 
    root to: 'dashboard#index'
  	get '/movies/search/:q' => 'misc#search'
    resources :movies do 
    	get :banners, on: :member
      get 'fetch-from-openload', on: :collection
    end
  	get "movies-a33cc281-6475-4ba6-b08f-f59f8a9d6532" => "movies#export_movies"
  end

  get "/movies/:id/:flag" => "misc#movie_detail"
end