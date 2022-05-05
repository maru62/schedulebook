# coding: utf-8
Rails.application.routes.draw do
  resources :hours
  resources :purchases
  resources :expenses
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
  get 'messages/list'
  get 'messages/todesking'
  # 結局Railbookと同じところで躓いて詰まった、なんかルーティングの説明とかをもっと読まないといけない気がする
  get 'messages/todesking_form'
  post 'messages/todesking_query'
  
  
=begin 以下はポア  
  ## とりあえず固定された要求でIDを指定して表示させる
  get 'messages/find_by_ids'

  ## とりあえず固定された要求で文字列を検索して表示させる
  get 'messages/find_by_string'

  ## searchコントローラーはポア
  ### phowa
=end  
  
end
