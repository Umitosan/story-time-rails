class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @story = @user.stories.new
  end

  def create
    @user = User.find(params[:user_id])
    @story = @user.stories.new(story_params)
    if @story.save
      flash[:notice] = "Story added!"
      redirect_to user_story_path(@user, @story)
    else
      render :new
    end
  end

  private
  def story_params
    params.require(:story).permit(:title)
  end

end
