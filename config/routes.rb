Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#  root 'source_providers#root'
  get '/' => 'source_providers#index'
  get 'source_providers/:id' => 'source_providers#show'
  get 'source_providers' => 'source_providers#show'

  resources :source_providers
end
