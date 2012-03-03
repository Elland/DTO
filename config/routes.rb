Dto::Application.routes.draw do
  devise_for :users

  resources :favorites

  post 'favorites/add/:id' => 'favorites#add', as: :add_favorite

  get 'comics/prev' => 'comics#prev', as: :prev_comics
  get 'comics/next' => 'comics#next', as: :next_comics
  get 'comics/last' => 'comics#last', as: :last_comic

  get 'comics/:id' => 'comics#show', as: :show_comic

  root :to => 'comics#index'
end
