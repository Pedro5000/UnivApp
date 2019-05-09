class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :update, :show, :destroy]

  def index
    @courses = Course.all
  end

  def new; end

  def show; end

  def edit; end

  def destroy; end

private

  def set_course
    @course = Course.find(params[:id])

  end

end
