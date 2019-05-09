module ApplicationHelper

  def latest_students
    Student.order('created_at DESC').limit(5)
  end
end
