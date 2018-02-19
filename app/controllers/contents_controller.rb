class ContentsController < ApplicationController
  def index
    @contents = Content.all
    @new_content = Content.new
  end

  def new
    @content = Content.new(content_params)
    @content.user_id = 1
    if @content.valid?
      @content.save
      flash[:success] = ["投稿できました"]
      redirect_to action: :index
    else
      flash[:error] = @content.errors.full_messages
      redirect_to action: :index
    end
  end

  def detail
    @content = Content.find(params[:id])
    @new_comment = Comment.new
  end

  def new_comment
    @comment = Comment.new(comment_params)
    @comment[:user_id] = 1
    if @comment.valid?
      @comment.save
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
