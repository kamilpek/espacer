class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_users_path, notice: 'Użytkownik dodany.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params_edit)
        format.html { redirect_to admin_users_path, notice: 'Użytkownik zmodyfikowany.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to admin_users_path, notice: "Użytkownik usunięty."
    end
  end

  def grantadmin
    @user = User.find(params[:id])
    user = User.find(@user.id)
    if @user.admin?
      user.update_attribute(:admin, false)
    else
      user.update_attribute(:admin, true)
    end
    redirect_to admin_users_path, notice: "Zakutalizowano uprawnienia administratora."
  end

  def resetpassword
    user = User.find(params[:id])
    user.password = "startowe"
    user.password_confirmation = "startowe"
    user.update_attribute(:sign_in_count, 0)
    user.save
    redirect_to admin_users_path, notice: "Zresetowano hasło."
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role_id)
  end

  def user_params_edit
    params.require(:user).permit(:first_name, :last_name, :email, :role_id)
  end

  def user_params_notes
    params.require(:user).permit(:notes)
  end

end
