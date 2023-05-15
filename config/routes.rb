Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'   #ここを追記します
  get 'lists' => 'lists#index'
  get 'lists/edit'
  get '/top' => 'homes#top'
  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list'
end
