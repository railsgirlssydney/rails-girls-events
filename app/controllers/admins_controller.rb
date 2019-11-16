class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @admin = Admin.new
    @admin.applications.build
  end

  def edit
  end

  def destroy
    admin = Admin.find(params[:id])
    if admin
      admin.destroy
    end
    redirect_to admins_path
  end

  def show
    @admin = current_admin
    @admin_page = true
  end

  def data
    @users = User.all
    @admin_page = true
  end

end
