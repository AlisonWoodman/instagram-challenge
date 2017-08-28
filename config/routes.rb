Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :posts
    resources :comments
    resources :likes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "users#show"
end
