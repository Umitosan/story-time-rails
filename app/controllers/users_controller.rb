class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User saved!"
      redirect_to root_path
    else
      render :new
    end
  end
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
  def user_params
    params.require(:user).permit(:name)
  end

end
