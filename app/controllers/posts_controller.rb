class PostsController < ApplicationController
  def index
    # viewで使いたい変数をここで定義する。
    @posts = [
      "今日からProgateでRailsの勉強するよー！",
      "投稿一覧ページ作成中！"
    ]
  end
end
