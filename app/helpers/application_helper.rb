module ApplicationHelper

  def session_link
    if (logged_in?)
      link_to('Log Out', logout_path, method: :delete)
    else
      link_to('Log In', login_path)
    end
  end


  def latest_students
    Student.order('created_at DESC').limit(5)
  end
end
