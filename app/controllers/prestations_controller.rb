class PrestationsController < ApplicationController
  def index
  end

  def new
    @client = Client.find(params[:client_id])
    @prestation = Prestation.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
