Rails.application.routes.draw do
  get 'professions/index'
  devise_for :users
  root to: 'pages#home'
  get 'welcome', to: 'pages#welcome'
  get 'onboarding', to: 'questions#index'
  get 'answers/:id', to: 'answers#answer'
  get 'professions/compare', to: 'professions#compare'
  resources :professions, only: [:index, :show] do
    get 'select', to: 'professions#select'
  end
  get 'professions/:title/jobs', to: 'professions#jobs'
  get 'steps/:id/complete', to: 'steps#complete'
end
