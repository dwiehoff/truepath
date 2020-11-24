Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  namespace :assessments do
    namespace :skills do
      resources :questions, only: [ :show ]
    end
    resources :kasis, only: [ :index, :show ]
  end
  resources :professions, only: [ :index, :show ]
  resources :roadmaps, only: [ :show ]
end
