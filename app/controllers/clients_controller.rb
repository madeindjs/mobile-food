class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
  end

  def create
  end
end
