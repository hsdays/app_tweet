class PostsController < ApplicationController
  def index
    # Post.allにorderメソッドを用いて、新しい投稿が上から順に表示されるようにしてください
    @posts = Post.all.order(created_at: :desc)
  end
  
  def show
    @id = params[:id]   #ルーティングで「:id」で指定しているurlの番号を取得することができる。
    @post = Post.find_by(id:params[:id])  #URLの番号に対応するテーブルのidを取得し、postにする
  end

  def new
  end
  def create
    # フォームから送信されたデータを受け取り、保存する処理を追加してください
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/posts/index")
  end
end
