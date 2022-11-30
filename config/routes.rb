Rails.application.routes.draw do
  resources :leases, only: [:create, :destory]
  resources :tenants, only: [:index, :update, :show, :destory, :create]
  resources :apartments, only: [:index, :update, :show, :destory, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
