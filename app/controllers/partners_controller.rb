class PartnersController < ApplicationController

  def index
    @partners = Partner.all
  end

  def new
  end

  def create
    @partner=Partner.new
  end
end
