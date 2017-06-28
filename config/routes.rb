Rails.application.routes.draw do
  root to: 'users#index'

  resources :stories do
    resources :snippets
  end

  resources :users do
    resources :stories
  end

end
