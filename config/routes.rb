Rails.application.routes.draw do
  get '/' => 'pages#welcome'

  get '/welcome' => 'pages#welcome'

  get '/about_me' => 'pages#about'

  get '/kitten/:size' => 'pages#kitten'

  get '/kittens/:size' => 'pages#kittens'

  get '/contest' => 'pages#contest'

  get '/secrets/:magic_word' => 'pages#secrets'
end
