# frozen_string_literal: true

Rails.application.routes.draw do
  resources :listings
  devise_for :users
  get '/', to: 'application#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
