Rails.application.routes.draw do
  root to: 'page#home'
  get 'page/about'

  resources :jour

end
