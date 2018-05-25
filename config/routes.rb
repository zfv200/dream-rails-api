Rails.application.routes.draw do
  resources :images
  namespace :api do
    namespace :v1 do
      resources :users
      resources :dreams
      resources :analyses
      resources :collages
      resources :images
    end
  end
end
