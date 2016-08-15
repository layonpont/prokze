Rails.application.routes.draw do
  resources :requests
  root 'welcome#index'
  devise_for :admins,
                         :path => '',
                         :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile', :sign_up => 'signup',},
                         :controllers => {:registrations => 'registrations'}


  resources :admins, only: [:show]
  resources :agencies
  resources :professionals
end
