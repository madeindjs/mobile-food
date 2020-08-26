class ClientsController < ApplicationController
  def index
    @clients = Client.all
    @clients_grid = initialize_grid(Client)

  end

  def new
  end

  def create
    @client = Client.new
  end

end
