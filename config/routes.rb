Rails.application.routes.draw do

  get 'books', to: 'books#index'

  get 'books/show/:id', to: 'books#show', as: 'book'

  get 'books/new'
  post 'books/new'

  get 'books/edit/:id', to: 'books#edit'
  patch 'books/edit/:id', to: 'books#edit'

  get 'books/delete/:id', to: 'books#delete'

  resources :comments, only:[:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
