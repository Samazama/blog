SamazamaProject::Application.routes.draw do
  root :to => 'home#index'

  resources :posts do
    resources :comments
  end

  resources :mangas
  resources :admin, only: [:index, :new, :create, :destroy]
  match 'logout' => 'admin#destroy', :as => :logout
  match 'team' => 'team#index'
end
