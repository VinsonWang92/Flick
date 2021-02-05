Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  scope '/api' do
    get '/watchlists', to: 'watchlists#index'
    post '/watchlists', to: 'watchlists#create'
    get '/watchlists/:username', to: 'watchlists#show_list_by_username'
    delete '/watchlists/:id', to: 'watchlists#destroy'
    get '/friendships', to: 'friendships#show_list_by_user_id'
    post '/friendships', to: 'friendships#create'
    delete '/friendships/:username', to: 'friendships#destroy'

    scope '/auth' do
      post '/sign_up', to: 'users#create'
      post '/sign_in', to: 'users#sign_in'
      post '/profile', to: 'users#profile'
      put '/update', to: 'users#update' 
      delete '/delete', to: 'users#delete' 
    end
  
  end
end

