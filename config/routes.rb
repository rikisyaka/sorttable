Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'parents/index'
  patch 'parents/index/sort', to: 'parents#index'

  resources :parents, only: %i(new create show)
end
