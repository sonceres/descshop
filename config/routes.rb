Rails.application.routes.draw do
  get 'ads/index'

  get 'ads/new'

  get 'ads/create'

  get 'ads/edit'

  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :sections
resources  :ads
root to: "home#index";



end
