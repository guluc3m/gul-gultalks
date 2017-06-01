Rails.application.routes.draw do
  devise_for :admin
  mount RailsAdmin::Engine, at: '/admin', as: :rails_admin

  # Admin
  get '/admin', to: 'admin#index', as: :admin

  # API
  get   '/api', to: 'api#index', as: :api_docs
  get   '/api/conferences', to: 'api#conferences', as: :api_conferences
  get   '/api/conferences/:id/events', to: 'api#conference_events', as: :api_conference_events
  post  '/api/conferences/:id/:task', to: 'api#modify_conference', as: :api_modify_conference

  # Verifiers
  get '/verify/:token', to: 'verifier#verify', as: :verify

  # Conferences
  get '/conferences', to: 'conferences#index', as: :conferences
  get '/:id', to: 'conferences#show', as: :conference

  # Comments
  resources :comments, path: '/:conference_id/:event_id/comments'

  # Event creation
  get   '/:conference_id/new', to: 'events#new', as: :new_conference_event
  get   '/:conference_id/new/basic', to: 'events#new_basic', as: :basic_events
  post  '/:conference_id/new/basic', to: 'events#create_basic', as: :create_basic_event
  get   '/:conference_id/new/detailed', to: 'events#new_detailed', as: :detailed_events
  post  '/:conference_id/new/detailed', to: 'events#create_detailed', as: :create_detailed_event

  # Event edition
  get   '/edit/:token', to: 'events#edit', as: 'edit_event'
  patch '/edit/:token', to: 'events#save_edit', as: 'save_edited_event'

  # Events
  get   '/:conference_id/events', to: 'events#index', as: 'conference_events'
  get   '/:conference_id/:id', to: 'events#show', as: 'conference_event'
  get   '/:conference_id/:id/propose_speaker', to: 'events#propose_speaker', as: 'propose_speaker_conference_event'
  post  '/:conference_id/:id/propose_speaker', to: 'events#send_speaker', as: 'send_speaker_conference_event'
  get   '/:conference_id/:id/vote', to: 'events#vote', as: 'vote_conference_event'
  post  '/:conference_id/:id/vote', to: 'events#send_vote', as: 'send_vote_conference_event'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
