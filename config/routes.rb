Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants, only: [:update, :edit, :destroy] do
      resources :reviews, only: [:update, :edit, :destroy]
    end
  end


  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [ :index, :new, :create ]
  end

end
