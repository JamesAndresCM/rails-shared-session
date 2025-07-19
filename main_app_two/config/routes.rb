Rails.application.routes.draw do
  resources :products
  root to: "products#index"
  mount AuthEngine::Engine => "/auth"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
