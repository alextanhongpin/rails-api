Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope module: :api do
    namespace :v1 do
      resources :users, :articles
    end
  end
end
