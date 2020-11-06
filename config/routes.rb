Rails.application.routes.draw do
  devise_for :users, controllers:{ registrations: 'users/registrations',sessions: 'users/sessions' }
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

  resources :users,  only:[:index, :show]
  resources :reactions, only:[:create]
  resources :matching, only:[:index]
  resources :chat, only:[:create] 
  resources :chat_message, only:[:show, :create]
end
