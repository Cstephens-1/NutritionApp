Rails.application.routes.draw do
  resources :user_allergies
  resources :food_group_foods
  resources :recipe_ingredients
  resources :meal_plans
  resources :user_progresses
  resources :goals
  resources :food_ingredients
  resources :allergies
  resources :activities
  resources :food_groups
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index
 

  get '/hello', to: 'application#hello_world'

   get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
