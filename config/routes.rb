Rails.application.routes.draw do

  root to: 'homes#top'
  get "home/about" => 'homes#about' ,as: 'about'
  devise_for :users
  resources :books,only:[:create,:index,:show, :edit,:destroy, :update]  do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show,:index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
