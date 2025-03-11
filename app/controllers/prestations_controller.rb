class PrestationsController < ApplicationController
  def index
  end

  def new
    @client = Client.find(params[:client_id])
    @prestation = Prestation.new
  end

  def create
    @client = Client.find(params[:client_id])
    @prestation = Prestation.new(presta_params)

    @prestation.client = @client
    @prestation.save
    redirect_to clients_path()
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def presta_params
    params.require(:prestation).permit(:client_id,:code,:n_devis)
  end
end
