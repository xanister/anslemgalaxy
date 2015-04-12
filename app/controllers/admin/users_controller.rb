class Admin::UsersController < Admin::AdminController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      respond_to do |format|
        format.html { redirect_to edit_admin_user_path(@user), notice: @user.email + " has been created." }
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      respond_to do |format|
        format.html { redirect_to edit_admin_user_path(@user), notice: @user.email + " has been updated." }
      end
    else
      respond_to do |format|
        format.html { render action: "new" }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :admin)
  end
end
