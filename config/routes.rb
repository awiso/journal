Rails.application.routes.draw do
  root to: 'page#home'
  get 'page/about'

  resources :jour, except: [:edit, :update] do
    resources :future_log, exceot: [:edit, :update]
  end

end
