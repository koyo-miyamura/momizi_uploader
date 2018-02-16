class ContentsController < ApplicationController
  def index
    #@contents_list = Content.find(:all)
    @new_content = Content.new
  end

  def new
    @content = Content.new(content_params)
    @content.user_id = 1
    if @content.save!
      redirect_to action: :index
    else
      render "Error"
    end
  end

  def detail
  end

    private
    def content_params
      params.require(:content).permit(:caption, :image)
    end
end
