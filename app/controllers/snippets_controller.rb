class SnippetsController < ApplicationController

  def new
    @story = Story.find(params[:story_id])
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(snippet_params)
    if @snippet.save
      flash[:notice] = "Snippet saved!"
      redirect_to story_path(@story.id)
    else
      render :new
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit(:body, :story_id, :user_id)
  end
end
