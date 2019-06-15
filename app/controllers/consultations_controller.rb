class ConsultationsController < ApplicationController
  def index
    @consultations = Consultations.all
  end

  def show
    @consultation = Consultations.find(params[:id])
  end

  def new
    @consultation = Consultations.new
  end

  def create
    @consultation = Consultations.new(consultation_params)
    @consultation.save
    redirect_to service_constulation_path(@consultation)
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
