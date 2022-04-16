# coding: utf-8
Rails.application.routes.draw do
  resources :days

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  ## helloworkコントローラーのアクションに対してのルート
  get 'hellowork/index', to: 'hellowork#index'
  get 'hellowork/hellowork'

  ## searchコントローラーのアクションに対してのルート
  get 'search/index'  # 特に何も置いてない
  get 'search/search'
  
end
