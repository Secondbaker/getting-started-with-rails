Rails.application.routes.draw do
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  get '/redirect', to: 'example#redirect', as: 'redirect'
  get '/callback', to: 'example#callback', as: 'callback'
  get '/calendars', to: 'example#calendars', as: 'calendars'
  get '/events/:calendar_id', to: 'example#events', as: 'events', calendar_id: /[^\/]+/
  get '/all_events', to: 'example#all_events', as: 'all_events'
  get '/choose_calendar', to: 'example#choose_calendar', as: 'choose_calendar'


  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
