class ContentsController < ApplicationController
  before_action :sign_in_required
  def index
    # N+1問題対策
    @contents = Content.includes(comments: :user)
    @new_content = Content.new
  end

  def create
    @content = Content.new(content_params)
    @content[:user_id] = current_user.id
    if @content.save
      flash[:success] = ["投稿できました"]
      redirect_to action: :index
    else
      flash[:error] = @content.errors.full_messages
      redirect_to action: :index
    end
  end

  def delete
    @content = Content.find_by(params.permit(:id))
    if @content.destroy
      flash[:success] = "正しく削除されました"
      redirect_to action: :index
    else
      flash[:error] = "削除されませんでした"
    end
  end

  def detail
    @content = Content.includes(comments: :user).find_by(id: params[:id])
    #@content = Content.includes(comments_limit: :user).find_by(id: params[:id])
    if @content.nil?
      head 404
    end

    @new_comment = Comment.new
  end

  def create_comment
    @comment = Comment.new(comment_params)
    @comment[:user_id] = current_user.id
    if @comment.save
      flash[:success] = ["投稿しました"]
      redirect_to action: :detail, id: @comment[:content_id]
    else
      flash[:error] = @comment.errors.full_messages
      redirect_to action: :detail, id: @comment[:content_id]
    end
  end

    private
    def content_params
      params.require(:content).permit(:caption, :image)
    end
    def comment_params
      params.require(:comment).permit(:content_id, :text)
    end
end
