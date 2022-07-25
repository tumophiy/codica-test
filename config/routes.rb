# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :doctors
      resources :doctor_types
      resources :patients
      resources :visits

      root to: "users#index"
    end
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  get 'home/index'
  root to: 'home#index'
end
