class ThinkerappsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @thinkerapp = Thinkerapp.new
  end

  def create
    @thinkerapp = Thinkerapp.new(thinkerapp_params)
    if @thinkerapp.save
      ThinkerappMailer.application_creation(@thinkerapp).deliver_now
      redirect_to root_path, notice: "Your application was succesfully submitted!"
    else
      render :new
    end
  end

  private

  def thinkerapp_params
    params.require(:thinkerapp).permit(:first_name, :last_name, :email, :field, :degree, :website, :upload_cv, :upload_cv_cache, :accepts_data_treatment)
  end
end
