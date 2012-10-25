Movementplayer::Application.routes.draw do

  root :to => 'songs#list'

  match '/buysongs' => 'songs#list'

  resources :users
  resources :songs do
    resources :purchases
  end

end
