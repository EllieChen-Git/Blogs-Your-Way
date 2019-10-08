Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #GET "/posts" => read all posts
  get "/posts", to: "posts#index", as: "root"
  #POST "/posts" => create posts
  post "/posts", to: "posts#create"

  #GET/FORM "/posts/new" => form to create a new post
  get "/posts/new", to: "posts#new", as: "new_post"
  #GET "/posts/:id" => read a post
  get "/posts/:id", to: "post#show", as: "post"

  #GET/FORM "/posts/:id/edit" => form to update a post
  get "/posts/:id/edit", to: "post#edit", as: "edit_post"
  #PUT/PATCH "/posts/:id" => update a post
  put "/posts/:id", to: "post#update"
  patch "/posts/:id", to: "post#update"

  #DELETE"/posts/:id" => destroy a post
  delete "/posts/:id", to: "post#destroy"
end
