Rails.application.routes.draw do
  get 'chat_message/new'
  get 'chat_message/create'
  devise_for :users
  root  'home#index'

  resources :users,  only:[:index, :show , :new]
  resources :reactions, only:[:create]
  resources :matching, only:[:index]
  resources :chat, only:[:create] 
  resources :chat_message, only:[:show, :create]
end
