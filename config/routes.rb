Rails.application.routes.draw do
  
  get 'homes/about'=>'homes#new',as: 'about'
  # For details on the DSL available within this
  
  root to: 'homes#top'
  devise_for :users
  
  resources :post_images,only:[:new,:create,:index,:show,:destroy]
  resources :users,only:[:show,:edit]
  
  get 'homes/about'=>'homes#new',as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
