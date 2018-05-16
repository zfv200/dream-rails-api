Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :dreams
      resources :analyses
      resources :collages
    end
  end

  post '/sessions/', to: 'sessions#create'
end
