class PartnersController < ApplicationController

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
end
