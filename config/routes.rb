# frozen_string_literal: true

Rails.application.routes.draw do
  resources :doctor_profiles, only: %i[index show]
  resources :visits, only: [:create]
  resources :patient_profiles, only: [:index]
  namespace :admin do
    resources :users
    resources :doctors
    resources :doctor_types
    resources :patients
    resources :visits

    root to: 'users#index'
  end
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  root to: 'home#index'
end
