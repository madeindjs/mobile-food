class PartnersController < ApplicationController
  before_action :set_partner, only:[:show, :destroy, :edit, :update]

  def index
    @partners_grid = initialize_grid(Partner,
      order:           'partners.company_name',
      order_direction: 'desc'
      )
  end

  def new
    @partner = Partner.new
  end

  def show
  end

  def create
    @partner = Partner.new(partner_params)
    if @partner.save
      redirect_to partners_path
    else
      flash[:alert] = "Partner rejected"
      render 'new'
    end
  end

  def destroy
    @partner.destroy
    redirect_to partners_path
  end

  def set_partner
    @partner = Partner.find(params[:id])
  end

  def partner_params
    params.require(:partner).permit(:company_name, :first_name, :last_name, :email, :phone_number)
  end

  end
