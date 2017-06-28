Rails.application.routes.draw do
  root to: 'stories#index'

  resources :stories do
    resources :snippets
  end

  resources :users do
    resources :stories
  end

end
