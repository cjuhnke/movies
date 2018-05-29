Rails.application.routes.draw do

  get "/" => "movies#index"

  get "/movies" => 'movies#index'
  get "/movies/new" => 'movies#new'
  get "/movies/create" => 'movies#create'
  get "/movies/:id/delete" => 'movies#destroy'
  get "/movies/:id" => 'movies#show'
  get "/movies/:id/edit" => 'movies#edit'
  get "/movies/:id/update" => 'movies#update'
  
  get "/directors" => 'directors#index'
  get "/directors/new" => 'directors#new'
  get "/directors/create" => 'directors#create'
  get "/directors/:id/delete" => 'directors#destroy'
  get "/directors/:id" => 'directors#show'
  get "/directors/:id/edit" => 'directors#edit'
  get "/directors/:id/update" => 'directors#update'

end
