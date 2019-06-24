class PreconsultationsController < ApplicationController
  def show
    @preconsultation = Preconsultation.find(params[:id])
  end

  def new
    @enquiry = params
    @sex = ["Male", "Female"]
    @goals = ["Lose weight", "Gain strength", "Gain endurance"]
    @period = ["Weeks", "Months"]
    @contact = ["In person", "Phone", "Video chat"]
    @preconsultation = Preconsultation.new
  end

  def create
    @preconsultation = Preconsultation.new(preconsultation_params)
    @client = Client.new(client_params)
    if @preconsultation.save
      @client.preconsultation_id = @preconsultation.id
      @client.save
      redirect_to preconsultation_path(@preconsultation)
    else
      render :new
    end
  end

  private

  def preconsultation_params
    params.require(:preconsultation).permit(Preconsultation.column_names)
  end

  def client_params
    params.require(:preconsultation).permit(:first_name, :last_name, :email, :phone)
  end
end
