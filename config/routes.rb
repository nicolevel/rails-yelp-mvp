Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:new, :create, :edit, :update]

    namespace :admin do
      resources :restaurants, only: [:index]
    end
  end
end

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
