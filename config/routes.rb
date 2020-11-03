Rails.application.routes.draw do
  devise_for :users
  root  'home#index'

  resources :home, only:[:index] do
    collection do
      get 'chat', 'other', 'seek'
    end
  end
  resources :tweets do
    member do
      get 'discussion'
    end
    resources :tweet_comments, only: [:create]
  end

  resources :items, only:[:index]

  resources :users,  only:[:index, :show , :new]
  resources :reactions, only:[:create]
  resources :matching, only:[:index]
  resources :chat, only:[:create] 
  resources :chat_message, only:[:show, :create]
end
