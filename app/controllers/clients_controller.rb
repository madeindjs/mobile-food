class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy, :edit, :update]

  def index
    @clients_grid = initialize_grid(Client,
      order:           'clients.last_name',
      order_direction: 'desc'
      )
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_path
    else
      flash[:alert] = "Client rejected"
      render 'new'
    end
  end

  def show

  end

  def edit
  end

  def update
    @client.update(client_params)
    redirect_to clients_path
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  def set_client
    @client = Client.find(params[:id])
  end

    def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :status)
  end
end
