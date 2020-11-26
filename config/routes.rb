Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'welcome', to: 'pages#welcome'
  get 'onboarding', to: 'questions#index'
  get 'answers/:id', to: 'answers#answer'
  resources :professions, only: [:index, :show] do
    get 'select', to: 'professions#select'
    get 'jobs', to: 'professions#jobs'
  end
  get 'steps/:id/complete', to: 'steps#complete'
end
