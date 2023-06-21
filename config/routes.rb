Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostController
  get'/',to:'posts#index',as:'index_post'
  get'posts/new',to:'posts#new',as:'new_post'
  
  post'posts/new',to:'posts#create',as:'create_post'
  
  #TopicsController
  get 'topics/new', to:'topics#new',as:'new_topic'
  get 'topics/edit/:id', to:'topics#edit',as:'edit_topic'
  
  post 'topics/new', to:'topics#create',as:'create_post'
  post 'topics/edit/:id', to:'topics#update',as: 'update_topic'
  
end

