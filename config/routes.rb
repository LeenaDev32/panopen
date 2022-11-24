# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books, :courses, :users, :reading_times
end
