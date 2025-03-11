class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.save
    redirect_to clients_path()
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def client_params
    params.require(:client).permit(:code, :society,:mail_contact,:mail_resultat,:amv)
  end
end
