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
      redirect_to user_story_path(@user.id, @story.id)
    else
      render :new
    end
  end



  # def create
  #   @section = Section.find(params[:section_id])
  #   @lesson = @section.lessons.new(lesson_params)
  #   if @lesson.save
  #     flash[:notice] = "Lesson successfully added!"
  #     redirect_to section_path(@lesson.section)
  #   else
  #     render :new
  #   end
  # end


  #
  # def edit
  #   @section = Section.find(params[:section_id])
  #   @lesson = Lesson.find(params[:id])
  # end
  #
  # def update
  #   @section = Section.find(params[:section_id])
  #   @lesson = Lesson.find(params[:id])
  #   if @lesson.update(lesson_params)
  #     flash[:notice] = "Lesson successfully updated!"
  #     redirect_to section_path(@lesson.section)
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   @section = Section.find(params[:section_id])
  #   @lesson = Lesson.find(params[:id])
  #   @lesson.destroy
  #   flash[:notice] = "lesson destroyed!"
  #   redirect_to section_path(@lesson.section)
  # end
  #
  #
  private
  def story_params
    params.require(:story).permit(:title)
  end

end
