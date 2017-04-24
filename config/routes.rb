Rails.application.routes.draw do

  resources :wholesalers do
    resources :batches, only: [:index]
    resources :offers, only: [:index, :edit, :update]
  end

  resources :batches, only: [:index]

  resources :batches
  
  resources :manufacturers do
    resources :batches do
      resources :offers, only: [:new, :create, :index]
    end
    resources :offers, only: [:index], controller: 'manufacturers/offers'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
