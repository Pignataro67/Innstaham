Rails.application.routes.draw do
  resources :picture_hashtags
  resources :icons
  resources :hashtags
  resources :comments
  resources :likes
  resources :pictures
  resources :followings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
