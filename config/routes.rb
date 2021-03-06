Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :update, :show, :create]

      resources :product_sheets, only: [:index, :update, :show, :create, :destroy]

      get 'product_sheets/download(/:id)', to: 'product_sheets#download'

    end
  end

end
