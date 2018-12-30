Rails.application.routes.draw do
  
  namespace :api, defaults: {format: 'json'}  do
    namespace :v1 do
      
      resources :schools
      
    end
  end  
  
  
  devise_for :users
  
  resources :subjects do
    collection do
      get 'grades_list'
    end
    member do
     
    end  
  end
  
  
  match 'home/*path' => 'home#index', via: [:get, :post, :put, :patch, :delete]

  resources :schools 
  
#  get 'students/index'
#  get 'students/new'
#  post 'students/create'

#  OR

   resources :students, only: [:index, :new, :create] do
    resources :profile
   end
  
  root to: "schools#index"
end
