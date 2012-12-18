Obtvse::Application.routes.draw do
  resources :posts
  get 'tags/:tag', to: 'posts#index', as: :tag
  match '/admin', :to => 'posts#admin'
  match '/new', :to => 'posts#new'
  match '/edit/:id', :to => 'posts#edit'
  post '/preview', :to => 'posts#preview'
  get '/about', :to => 'posts#about'
  put '/preview', :to => 'posts#preview'
  get '/:slug', :to => 'posts#show', :as => 'post'
  delete '/:slug', :to => 'posts#destroy', :as  => 'post'
  put '/:slug', :to => 'posts#update', :as  => 'post'
  root :to => 'posts#index'
end