Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'book#list'
   get 'books/list' => 'book#list'
   get 'books/new' => 'book#new'
   post 'books/create' => 'book#create'
   patch 'books/update' => 'book#update'
   get 'books/show' => 'book#show'
   get 'books/edit' => 'book#edit'
   get 'books/delete' => 'book#delete'
   get 'books/show_subjects' => 'book#show_subjects'
  
  # Subjects
  get 'subjects/list' => 'subject#list'
   get 'subjects/new' => 'subject#new'
   post 'subjects/create' => 'subject#create'
   patch 'subjects/update' => 'subject#update'
   get 'subjects/show' => 'subject#show'
   get 'subjects/edit' => 'subject#edit'
   get 'subjects/delete' => 'subject#delete'
   get 'subjects/:id/show_books' => 'subject#show_books'
   post 'subject/:id/add_book' => 'subject#add_book'
end
