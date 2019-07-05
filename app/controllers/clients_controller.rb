class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to new_client_preconsultation_path(@client)
    else
      render :new
    end
  end

  private
  def client_params
    params.require(:client).permit(Client.column_names)
  end
end
