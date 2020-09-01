class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy, :edit, :update]

  def index
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @clients = Client.where(sql_query, query: "%#{params[:query]}%")
    else
      @clients = Client.all
    end
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:alert] = "Client created"
      redirect_to client_path(@client)
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
