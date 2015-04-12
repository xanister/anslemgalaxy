module ApplicationHelper

  def admin_namespace?
    # to return whether or not a user is active within the 'Admin' namespace
    controller.class.name.split('::').first == "Admin"
  end
end
