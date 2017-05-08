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

  get "/movie/:imdbid/:name" => "misc#movie_detail"
  get "/movie/:imdbid/:name/watch/online" => "misc#movie_watch"
  get "/movie/:imdbid/:name/download" => "misc#movie_download"

  get "/movie/upcoming" => "misc#upcoming"
  get "/movie/recent" => "misc#recent"
  get "/movie/categories" => "misc#categories"
  get "/movie/featured" => "misc#featured"
  get "/movie/news" => "misc#news"
  get "/movie/more" => "misc#more"
end