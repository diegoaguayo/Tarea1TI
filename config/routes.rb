Rails.application.routes.draw do

  root to: "series#index"

  resources :series, only: [:index, :show], param: :id do
  	resources :seasons, only: [:index, :show], param: :id
  end
 
  resources :episodes, only: [:show], param: :id
  resources :characters, only: [:show], param: :id

  get '/search' => 'pages#search', :as => 'search_page'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
