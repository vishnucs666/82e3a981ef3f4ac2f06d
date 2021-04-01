Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'api/typehead/:input' => 'api/user#typehead'
  namespace :api do
    resources :user
  end
end
