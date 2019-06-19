class ClientsController < ApplicationController
  def new
    # @client = Client.new
  end

  def create
    # @client = Client.new
    # @client.first_name = Preconsultation.last.first_name
  end

  private
  def client_params
    params.require(:client).permit(Client.column_names)
  end
end
