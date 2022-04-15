Rails.application.routes.draw do
  resources :days

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  ## helloworkコントローラーのアクションに対して
  get 'hellowork/index', to: 'hellowork#index'
  get 'hellowork/hellowork'

  ## viewコントローラーのアクションに対して
  get 'view/show_day'

end
