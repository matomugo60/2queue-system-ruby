module AdminsHelper
  # Check if a user is an admin
  def user_admin?(user)
    user && user.admin?
  end

  # Check if the currently logged-in user is an admin
  def current_user_admin?
    user_admin?(current_user)
  end

  # Display a message or content only if the user is an admin
  def admin_only_content
    yield if current_user_admin?
  end
end