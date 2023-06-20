Rails.application.routes.draw do
  resources :emails
  get 'codeform/pics'
  get 'codeform/texts'
  resources :textanimations
  resources :picanimations
  resources :pics
  resources :texts
  resources :rooms
  resources :messages do
    member do
      get "css"
    end
  end
  devise_for :users
  root "rooms#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
