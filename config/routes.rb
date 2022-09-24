Rails.application.routes.draw do
  get "posts/index" => "posts#index" #一覧ページ
  get "posts/new" => "posts#new" #新規作成ページ
  get "posts/:id" => "posts#show" #投稿ページ、※posts/〇〇すべてを読み込むので注意が必要。下に位置させる
  post "posts/create" => "posts#create" #データ送信のルーティング
  get "home" => "home#top"
  get "about" => "home#about"
end
