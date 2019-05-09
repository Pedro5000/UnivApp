class AdminController < ApplicationController

  layout 'admin'

  def index

  end

  def students
    @students = Student.all
  end

  def courses
    @courses = Course.all
  end

end
