Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 # this is routing for react to the database
 
  root 'pages#index'

 namespace :api do
  namespace :v1 do
    resources :airlines,param: :slug
    resources :review, only:[:create, :destroy]
  end
end
get '*path','pages#index',via: :all

end
