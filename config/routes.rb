Rails.application.routes.draw do
  # get 'books/new'
  # post 'books' => 'books#create'
  # get 'books/index'
root 'books#index'
  # get 'books/show'
  # get 'books/edit'
  get 'top', to: 'homes#top'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  # patch 'books/:id' => 'books#update', as: 'update_book'
  # delete 'books/:id' => 'books#destroy', as: 'destroy_book'
root 'books#index'

  resources :books
end