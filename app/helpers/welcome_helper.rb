module WelcomeHelper

  def greeting_options
    if logged_in?
      "<h1>Welcome, <%= current_user.name %></h1>
      <p><%= link_to 'Add Lesson', new_lesson_path %></p>
      <p><%= link_to 'Edit Profile', edit_instructor_path(current_user) %></p>"
    else
      "<h1>Welcome page!</h1>

      <p><%= link_to 'Log In', '/login' %></p>
      <p><%= link_to 'Register', new_instructor_path %></p>"
    end
  end 
  
end