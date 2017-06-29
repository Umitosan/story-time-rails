class SnippetsController < ApplicationController

  def new
    @story = Story.find(params[:story_id])
    @snippet = Snippet.new
  end

  def create
    @story = Story.find(params[:story_id])
    @snippet = @story.snippets.new(snippet_params)
    if @snippet.save
      flash[:notice] = "Snippet saved!"
      redirect_to story_path(@snippet.story)
      # redirect_to  story_snippet_path(@story, @snippet)
    else
      render :new
    end
  end

  private
  def snippet_params
    params.require(:snippet).permit(:body, :image)
  end
end
