class PreconsultationsController < ApplicationController
  def index
    @preconsultations = Preconsultation.all
  end

  def show
    @preconsultation = Preconsultation.find(params[:id])
  end

  def new
    @preconsultation = Preconsultation.new
  end

  def create
    @preconsultation = Preconsultation.new(preconsultation_params)
    if @preconsultation.save
      redirect_to preconsultation_path(@preconsultation)
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
    params.require(:preconsultation).permit(Preconsultation.column_names)
  end
end
