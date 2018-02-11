Rails.application.routes.draw do
  resources :offers

  devise_for :users, controllers: { registrations: "registrations", sessions: "sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
