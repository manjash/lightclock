require 'open-uri'

class ResearchordersController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @researchorder = Researchorder.new
  end

  def create
    @researchorder = Researchorder.create(researchorder_params)
    if @researchorder.save
      ResearchorderMailer.research_order(@researchorder).deliver_now
      open(URI::encode("http://light-clock-platform.herokuapp.com/client_profiles/add?name=#{@researchorder.first_name + @researchorder.last_name}&email=#{@researchorder.email}&organisation=#{@researchorder.organisation}&phone=#{@researchorder.phone}&research_subject=#{@researchorder.research_subject}&timezone=#{@researchorder.timezone}&to_be_contacted=#{@researchorder.time}"))
      redirect_to root_path, notice: "Your order was succesfully submitted!"
    else
      render :new
    end
  end

  private

  def researchorder_params
    params.require(:researchorder).permit(:first_name, :last_name, :organisation, :phone, :research_subject, :time, :timezone, :accepts_data_treatment)
  end
end
