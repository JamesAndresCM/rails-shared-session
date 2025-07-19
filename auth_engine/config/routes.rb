AuthEngine::Engine.routes.draw do
  devise_for :users, class_name: "AuthEngine::User", module: :devise
end
