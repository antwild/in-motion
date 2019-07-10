class ConsultationsController < ApplicationController
  def index
    @consultations = Consultations.all
  end

  def show
    @client = Client.find(params[:client_id])
    @consultation = Consultation.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @consultation = Consultation.new
  end

  def create
    @client = Client.find(params[:client_id])
    @consultation = Consultation.new(consultation_params)
    @consultation.preconsultation_id = @client.preconsultation_ids.last
    if @consultation.save
      redirect_to client_consultation_path(@client, @consultation)
    else
      raise
      render :new
    end
  end

  def consultation_params
    params.require(:consultation).permit(:important, :notes, :strategy)
  end
end
