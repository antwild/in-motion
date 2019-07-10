class ConsultationsController < ApplicationController
  def index
    @consultations = Consultations.all
  end

  def show
    @client = Client.find(params[:client_id])
    @consultations = Consultation.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @consultation = Consultation.new
  end

  def create
    @client = Client.find(params[:client_id])
    @consultation = Consultation.new(consultation_params)
    # @consultation.user_id = 13
    raise
    if @consultation.save
      redirect_to consultation_path(@consultation)
    else
      render :new
    end
  end

  def consultation_params
    params.require(:consultation).permit(:important, :notes, :strategy)
  end
end
