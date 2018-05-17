Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :lectures do
    resources :comments
    #/lectures/download_file
    collection do
     
    end
    member do
      get :download_file
      get :like_or_unlike
      get :spam_lec
    end
    
  end
  resources :courses
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
