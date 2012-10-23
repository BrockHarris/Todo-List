TodoApp::Application.routes.draw do
  match '/',  :to => 'todos#index'

  resources :todos 
  root :to => 'todos#index'
end
