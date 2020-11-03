Rails.application.routes.draw do
  namepace :api do
    namespace :v1 do
      resources :cards
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
