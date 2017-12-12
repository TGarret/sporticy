Rails.application.routes.draw do

  devise_for :users,
             :path => '',
             :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
             :controllers=>{:registrations=>'registrations',
                            :confirmations=>'confirmations'
             }

root 'pages#home'

resources :users, only: [:show]
resources :activities, path: "activités" do
resources :reservations, only: [:create]
resources :reviews, only:[:create, :destroy]

end

resources :photos

resources :conversations, only: [:index, :create] do
resources :messages, only: [:index, :create]
end



get '/preload'=>'reservations#preload'
get '/preview'=>'reservations#preview'
get '/mes_experiences' => 'reservations#your_experiences'
get '/mes_reservations' => 'reservations#your_reservations'


get "/search" => "pages#search"

end
