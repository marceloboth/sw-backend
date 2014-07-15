Rails.application.routes.draw do
  devise_for :users, skip: [:sessions]
  as :user do
    post '/api/login' => 'sessions#create'
  end

  namespace :api do
    resources :edges, only: [:index]
  end
end
