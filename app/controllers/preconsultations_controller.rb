class PreconsultationsController < ApplicationController
  def show
    @preconsultation = Preconsultation.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @preconsultation = Preconsultation.new
    @sex = ["Male", "Female"]
    @goals = ["Lose weight", "Gain strength", "Gain endurance"]
    @period = ["Weeks", "Months"]
    @contact = ["In person", "Phone", "Video chat"]
  end

  def create
    @client = Client.find(params[:client_id])
    @preconsultation = Preconsultation.new(preconsultation_params)
    @preconsultation.client = @client
    if @preconsultation.save
      PreconsultationMailer.with(preconsultation: @preconsultation).pre_confirm.deliver_now
      PreconsultationMailer.with(preconsultation: @preconsultation).new_precon.deliver_now
      redirect_to client_preconsultation_path(@client, @preconsultation)
    else
      render :new
    end
  end

  private

  def preconsultation_params
    params.require(:preconsultation).permit(Preconsultation.column_names)
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone)
  end
end
