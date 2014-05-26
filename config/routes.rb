Rails.application.routes.draw do
  root 'surveys#index'

  resources :surveys
end
