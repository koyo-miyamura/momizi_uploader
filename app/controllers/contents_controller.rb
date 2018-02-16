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
      flash[:success] = "投稿できました"
      redirect_to action: :index
    else
      flash[:error] = @content.errors.full_messages
      redirect_to action: :index
    end
  end

  def detail

  end

    private
    def content_params
      params.require(:content).permit(:caption, :image)
    end
end
