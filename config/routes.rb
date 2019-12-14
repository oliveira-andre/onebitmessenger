# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :contacts, only: %i[index new create destroy]
  resources :contacts, only: %i[index new create destroy]
  resources :chats, only: %i[index show] do
    resources :messages, only: :create, defaults: { format: :js }
  end

  get '/manifest.json', to: 'service_workers#manifest'
  get '/service-worker.js', to: 'service_workers#service_worker'

  root to: 'chats#index'
end
