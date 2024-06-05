Rails.application.routes.draw do
  
  #localhost:3000/topsにindexを表示させる
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #localhost:3000/posts/new
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy]

end
