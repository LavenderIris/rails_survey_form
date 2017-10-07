Rails.application.routes.draw do
  get '/result'  => 'surveys#result'
  get ''  => 'surveys#index'
  post '/add_user' => 'surveys#add_user'

end
