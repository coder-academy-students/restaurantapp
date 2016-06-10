Rails.application.routes.draw do
  get 'pages', to: 'pages#search_results'

  get 'pages', to: 'pages#filter_buttons'

  get 'pages', to: 'pages#filter_form'

  root 'pages#home'

  resources :meals
  resources :features
  resources :restaurants do
    collection do
      post :filter, :search, :find_by_location
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
