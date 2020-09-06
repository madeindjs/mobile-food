class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :edit, :update]

  def new
    @booking = Booking.new()
    @client = Client.find(params[:client_id])
    @food_type = @booking.food_type
  end

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR date ILIKE :query"
      @bookings = Booking.where(sql_query, query: "%#{params[:query]}%")
    else
      @bookings = Booking.all
    end
  end

  def create
    @client = Client.find(params[:client_id])
    @booking = Booking.new(booking_params)
    @booking.client = @client
    @booking.food_type = []
    @booking.food_type << @food_type
    if @booking.save
      flash[:alert] = "Booking has been created successfully"
      redirect_to bookings_path
    else
      flash[:alert] = "Booking rejected"
      render 'new'
    end
  end

  def show
    @client = @booking.client_id
  end

  def edit

  end

  def update
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def set_booking
    @booking = Booking.find(params[:id])
    @food_type = @booking.food_type
  end

  def booking_params
    params.require(:booking).permit(
      :date,
      :city,
      :client_id,
      :guest_quantity,
      :has_electricity,
      :chosen_partner_id,
      :requested_quotes_partners,
      food_type: []
      )
  end
end

