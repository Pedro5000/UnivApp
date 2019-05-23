class PagesController < ApplicationController
  skip_before_action :require_user

  def about
    @courses = Course.all
    @students = Student.all
  end

  def help; end
  def contact; end
end
