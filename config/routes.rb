Rails.application.routes.draw do
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  post 'logout' => 'secret#show'
  get '/secret' => 'secret#show'
end
