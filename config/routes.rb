# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do

  devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Admin
  match 'admin', to: 'admin#index', via: :get, path: '/admin'

  # API
  match 'api_docs', to: 'api#index', via: :get, path: '/api'
  match 'api_conferences', to: 'api#conferences', via: :get, path: '/api/conferences'
  match 'api_conference_events', to: 'api#conference_events', via: :get, path: '/api/conferences/:id/events'
  match 'api_modify_conference', to: 'api#modify_conference', via: :post, path: '/api/conferences/:id/:task'

  # Verifiers
  match 'verify', to: 'verifier#verify', via: :get, path: '/verify/:token'

  # Conferences
  match 'conferences', to: 'conferences#index', via: :get, path: '/conferences'
  match 'conference', to: 'conferences#show', via: :get, path: '/:id'

  # Comments
  resources :comments, path: '/:conference_id/:event_id/comments'

  # Event creation
  match 'new_conference_event', to: 'events#new', via: :get, path: '/:conference_id/new'
  match 'basic_events', to: 'events#new_basic', via: :get, path: '/:conference_id/new/basic'
  match 'create_basic_event', to: 'events#create_basic', via: :post, path: '/:conference_id/new/basic'
  match 'detailed_events', to: 'events#new_detailed', via: :get, path: '/:conference_id/new/detailed'
  match 'create_detailed_event', to: 'events#create_detailed', via: :post, path: '/:conference_id/new/detailed'

  # Event edition
  match 'edit_event', to: 'events#edit', via: :get, path: '/edit/:token'
  match 'save_edited_event', to: 'events#save_edit', via: :patch, path: '/edit/:token'

  # Events
  match 'conference_events', to: 'events#index', via: :get, path: '/:conference_id/events'
  match 'conference_event', to: 'events#show', via: :get, path: '/:conference_id/:id'
  match 'propose_speaker_conference_event', to: 'events#propose_speaker', via: :get, path: '/:conference_id/:id/propose_speaker'
  match 'send_speaker_conference_event', to: 'events#send_speaker', via: :post, path: '/:conference_id/:id/propose_speaker'
  match 'vote_conference_event', to: 'events#vote', via: :get, path: '/:conference_id/:id/vote'
  match 'send_vote_conference_event', to: 'events#send_vote', via: :post, path: '/:conference_id/:id/vote'

  root 'home#index'

end
