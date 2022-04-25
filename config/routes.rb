# coding: utf-8
Rails.application.routes.draw do
  resources :messages, constraints: { id: /[0-9]{1,3}/ }
  resources :days
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'days/show'

  ## helloworkコントローラーのアクションに対してのルート
  get 'hellowork/index', to: 'hellowork#index'
  get 'hellowork/hellowork'
  get 'hellowork/form_with_test'  # これ何だっけ

  ## messagesコントローラーのアクションに対してのルート
  get 'messages/id'
  get 'messages/search'
  post 'messages/search_by_id'
  get 'messages/search_by_id' #見るだけ用

  ## searchコントローラーはポア
  ### phowa
  
end
