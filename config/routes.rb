Rails.application.routes.draw do
  devise_for :users
  root  'home#index'

  resources :users,  only:[:index, :show , :new]
  resources :reactions, only:[:create]
  resources :matching, only:[:index]
  resources :chat, only:[:create, :show]
end
