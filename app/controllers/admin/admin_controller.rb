class Admin::AdminController < ApplicationController

  before_filter :authenticate_user!
  before_filter :user_is_admin!

  private

    def user_is_admin!
      redirect_to new_user_session_path unless current_user.admin?
    end

end