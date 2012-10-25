Movementplayer::Application.routes.draw do

  root :to => 'songs#list'

  match '/buysongs' => 'songs#list'

  resources :songs
  resources :users

end
