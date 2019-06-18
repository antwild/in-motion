class ConsultationsController < ApplicationController
  def index
    @consultations = Consultation.all
  end

  def show
    @consultation = Consultation.find(params[:id])
  end

  def new
    @user = User.new
    @service = Service.find(params[:service_id])
    @consultation = Consultation.new
  end

  def create
    # @user = User.find(params[:user_id])
    @service = Service.find(params[:service_id])
    @consultation = Consultation.new
    @consultation.service_id = params[:service_id]
    if @consultation.save(consultation_params)
      redirect_to service_constulation_path(@consultation)
    else
      render :new
    end
  end

# Commented actions will be needed when creating a sign up/in feature
  # def update
  # end

  # def edit
  # end

  # def destroy
  # end

  private

  def consultation_params
    params.require(:consultation).permit(:date, :time)
  end
end
