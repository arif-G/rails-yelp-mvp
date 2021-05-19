Rails.application.routes.draw do
  root to: redirect(path: '/restaurants')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[create]
  end
end
