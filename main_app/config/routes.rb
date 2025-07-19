Rails.application.routes.draw do
  resources :posts
  root to: "posts#index"
  mount AuthEngine::Engine => "/auth"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
