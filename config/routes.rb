Todo::Application.routes.draw do
  resources :todolists, :only => [:index, :show, :create, :update, :destroy]


  resources :todoitems, :only => [:create, :update, :destroy]
  root :to => 'todolists#index'
end
