Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get '/' => 'source_providers#index'
  #get 'source_providers/:id' => 'source_providers#show'
  #get 'source_providers' => 'source_providers#show'

  #get 'users/:id' => 'users#show'
  #get 'users' => 'users#show'

  #get 'courses' => 'course_results#courses'
  #get 'courses_history' => 'course_results#courses_history'

  resources :course_results
  resources :source_providers
  resources :users
end
