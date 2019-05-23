class AdminController < ApplicationController
  before_action :require_user
  before_action :require_admin, only: [:index, :students, :courses, :enrollments]
  layout 'admin'

  def index

  end

  def students
    @students = Student.all
  end

  def courses
    @courses = Course.all
  end

  def enrollments
    @students = Student.all
    @courses = Course.all
  end

  def profile

  end

end
