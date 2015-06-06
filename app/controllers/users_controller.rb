class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params.merge(admin_status: 'applied')
    if @user.save
      @user.send_application_thanks
    end
    render :new
  end

  def index
    @users = User.all
    @admin_page = true
  end

  def show
    @user = User.find params[:id]
    @admin = current_admin
    @admin_page = true
  end

  def update
    @user = User.find params[:id]
    if user_params[:comments].present?
      @user.comments.create user_params[:comments]
    end
    redirect_to user_path
  end

  def update_user_status
    @user = User.find params[:id]
    @user.update(user_status: params[:status])
  end

  def update_admin_status
    @user = User.find params[:id]
    @user.update(admin_status: params[:status])
    if @user.admin_status == 'approved'
      @user.send_invitation
    end
    redirect_to user_path
  end

  private
  def user_params
    params[:user].permit(:name, :email, :track, :under_18, :previous_attendance, :programming_experience, :reason, :tshirt_size, :tshirt_color, :status, comments: [:comment])
  end

end
