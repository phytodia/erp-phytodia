class EchantillonsController < ApplicationController
  def index
  end

  def new
    @client = Client.find(params[:client_id])
    @echantillon = Echantillon.new
  end

  def create
    @client = Client.find(params[:client_id])
    @echantillon = Echantillon.new(echantillon_params)

    @echantillon.client = @client
    @echantillon.save
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
  def echantillon_params
    params.require(:echantillon).permit(:code,:description,:n_lot,:reception_date)
  end
end
