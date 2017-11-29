Rails.application.routes.draw do
  root 'static_people#home'
  
  get '/about', to: 'static_people#about'
 
  resources :people
end

# Notes from lecture
# Rails.application.routes.draw do
#   root 'static_pages#home'

#   get '/about', to: 'static_pages#about'

#   resources :pages
# end