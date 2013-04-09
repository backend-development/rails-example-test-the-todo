Todo::Application.routes.draw do
  resources :todoitems, :only => [:index, :create, :update, :destroy]
  root :to => 'todoitems#index'
end
