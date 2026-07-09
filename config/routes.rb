Rails.application.routes.draw do
  devise_for :users
  root to: "kanjis#index"

  resources :kanjis, only: [:index, :show] do
    resources :posts, only: [:new, :create] do
      resources :comments, only: [:create, :destroy]
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end