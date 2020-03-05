Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get '/redirect', to: 'example#redirect', as: 'redirect'
  get '/callback', to: 'example#callback', as: 'callback'
  get '/calendars', to: 'example#calendars', as: 'calendars'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
