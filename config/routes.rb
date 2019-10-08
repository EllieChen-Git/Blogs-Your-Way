Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #GET "/posts" => read all posts
  get "/posts", to: "posts#index", as: "posts"

  #POST "/posts" => create posts
  post "/posts", to: "posts#create"

  #GET/FORM "/posts/new" => form to create a new post
  get "/posts/new", to: "posts#new", as: "new_post"

  #GET/FORM "/posts/:id/edit" => form to update a post
  get "/posts/:id/edit", to: "posts#edit", as: "edit_post"

  #GET "/posts/:id" => read a post
  get "/posts/:id", to: "posts#show", as: "post"

  #PUT/PATCH "/posts/:id" => update a post
  put "/posts/:id", to: "posts#update"
  patch "/posts/:id", to: "posts#update"

  #DELETE"/posts/:id" => destroy a post
  delete "/posts/:id", to: "posts#destroy"

  #Set up root
  get "/", to: "posts#index", as: "root"
end
