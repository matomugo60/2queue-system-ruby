module ClientHelper
  # Check if a user is a client
  def user_client?(user)
    user && user.client?
  end

  # Check if the currently logged-in user is a client
  def current_user_client?
    user_client?(current_user)
  end

  # Display a message or content only if the user is a client
  def client_only_content
    yield if current_user_client?
  end
end