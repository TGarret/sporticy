Rails.application.routes.draw do

  devise_for :users,
               :path => '',
               :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
               :controllers=>{:registrations=>'registrations'}

root 'pages#home'

resources :users, only: [:show]
resources :activities do
resources :reservations, only: [:create]
resources :reviews, only:[:create, :destroy]
end

resources :photos

get '/preload'=>'reservations#preload'
get '/preview'=>'reservations#preview'


end
