Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  get 'pessoas' => 'people#index'

  resources :emails#, only: [:index, :show]
  resources :people#, except: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
