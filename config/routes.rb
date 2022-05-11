# coding: utf-8
Rails.application.routes.draw do
  resources :hours
  resources :purchases
  resources :expenses
  resources :messages, constraints: { id: /[0-9]{1,3}/ }
  resources :days, constraints: {id: /[0-9]{10}/ }
  # 今回は日付でURLをつけたいのでIDがそのまま降りてくるURLは使えない
  
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
  ## 検索して絞り込む機能については全くできてないので保留する
  ## URLをきちんと整形できてからURLだけ指定したほうがよい気がする
  # get 'messages/todesking_form'
  # post 'messages/todesking_query'
  
  
end
