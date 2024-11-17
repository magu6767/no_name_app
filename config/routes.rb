# frozen_string_literal: true

Rails.application.routes.draw do
  resources :places, only: [:index, :show]
end
