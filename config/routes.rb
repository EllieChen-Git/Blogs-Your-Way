Rails.application.routes.draw do

  resources :posts do          #(15) nesting comments routes inside posts routes
    resources :comments        #after creating new routes, re-run server
  end

  root "posts#index"

end
