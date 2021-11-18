Rails.application.routes.draw do
  root to: 'pages#home'

  resources :restaurants, only: [ :index, :show, :destroy ] do
    resources :reviews, only: :create
  end

  # extra examples to understand AJAX manually, for clarity
  get 'xhr-example', to: 'pages#xhr_example'
  get 'fetch-example', to: 'pages#fetch_example'
  get 'fetch-example-modern', to: 'pages#fetch_example_modern'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
