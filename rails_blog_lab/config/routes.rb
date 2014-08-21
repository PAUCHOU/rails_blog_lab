Rails.application.routes.draw do
  root to: '#index'
  get '/posts/new', to: 'posts#'
end
