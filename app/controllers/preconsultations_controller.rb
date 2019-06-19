class PreconsultationsController < ApplicationController
  def index
    @preconsultations = Preconsultation.all
  end

  def show
    @preconsultation = Preconsultation.find(params[:id])
  end

  def new
    @user = User.new
    @service = Service.find(params[:service_id])
    @preconsultation = Preconsultation.new
  end

  def create
    # @user = User.find(params[:user_id])
    @service = Service.find(params[:service_id])
    @preconsultation = Preconsultation.new
    @preconsultation.service_id = @service.id
    if @preconsultation.save(preconsultation_params)
      redirect_to service_preconstulation_path(@preconsultation)
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

  def preconsultation_params
    params.require(:preconsultation).permit(:date, :time)
  end
end
