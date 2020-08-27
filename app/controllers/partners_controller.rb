class PartnersController < ApplicationController
  before_action :set_partner, only:[:show, :destroy, :edit, :update]

  def index
    @partners_grid = initialize_grid(Partner,
      order:           'partners.company_name',
      order_direction: 'desc'
      )
  end

  def new
  end

  def create
    @partner=Partner.new
  end

  def destroy
    @partner.destroy
    redirect_to partners_path

  end

  def set_partner
    @partner = Partner.find(params[:id])
  end
end
