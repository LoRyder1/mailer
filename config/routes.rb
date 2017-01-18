require 'resque/server'

Rails.application.routes.draw do
  resources :articles

  mount Resque::Server.new, at: "/resque"
end
