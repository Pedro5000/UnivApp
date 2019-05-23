class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :destroy]
  before_action :require_admin, only: [:new, :create, :update, :edit, :destroy]
  skip_before_action :require_user
  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "Course successfully created"
      redirect_to admin_courses_path
    else
      flash[:notice] = "There was a problem with the creation of your course"
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @course.update(course_params)
      flash[:notice] = "Course successfully updated"
      redirect_to admin_courses_path
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to admin_courses_path
  end

private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:short_name, :name, :description)
  end

end
