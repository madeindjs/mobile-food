class ClientsController < ApplicationController
before_action :set_client, only:[:show, :destroy, :edit, :update]

  def index
    @clients_grid = initialize_grid(Client,
      order:           'clients.last_name',
      order_direction: 'desc'
      )
  end

  def new
  end

  def create
    @client = Client.new
  end

  def show

  end

  def edit
  end

  def set_client
    @client = Client.find(params[:id])
  end
end
