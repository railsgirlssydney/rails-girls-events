class ApplicationsController < ApplicationController
  before_action :find_application, only: [:edit, :show, :destroy, :update]
  before_action :assign_admin

  def edit
  end

  # def destroy
  #   event = Event.find(params[:id])
  #   if event
  #     event.destroy
  #   end
  #   redirect_to users_path
  # end

  def show
    @application.comments.build
  end

  def update
    @application.assign_attributes(application_params)

    if @application.admin_status_changed?
      @application.send_admin_status_email
    end

    @application.save
    redirect_to application_path(@application)
  end

  private
  def find_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(Application.allowed_params)
  end

  def assign_admin
    @admin = current_admin
  end
end