Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  #PostController
  get'posts/new',to:'post#new',as:'new_post'
  get 'topics/new', to: 'topics#new',as:'new_topics'
  get 'topics/edit', to: 'topics#edit',as:'edit_topics'
  
end

