# frozen_string_literal: true

# This code is defining routes for a application.
Rails.application.routes.draw do
  get 'firstpage', to: 'special_pages#first_page'
  get 'secondpage', to: 'special_pages#second_page'
  get 'up' => 'rails/health#show', as: :rails_health_check

  root to: 'special_pages#home_page'
end
