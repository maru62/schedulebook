# coding: utf-8
Rails.application.routes.draw do
  resources :days
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'days/show'

  ## helloworkコントローラーのアクションに対してのルート
  get 'hellowork/index', to: 'hellowork#index'
  get 'hellowork/hellowork'

  ## searchコントローラーのアクションに対してのルート
  get 'search' , to: 'search#index' # search/searchを描画する
  get 'search/sort'
  get 'search/find_sad_day'
  get 'search/find_by_ids'
  
end
