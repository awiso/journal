Rails.application.routes.draw do
  root to: 'page#home'
  get 'page/about'

  resources :jour, except: [:edit, :update]

end
