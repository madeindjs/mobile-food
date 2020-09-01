class BookingsController < ApplicationController
  before_action :set_booking, only:[:show, :destroy, :edit, :update]

  def new
    @booking = Booking.new
    @client = Client.find(params[:client_id])
  end

  def index
    if params[:query].present?
      sql_query = "city ILIKE :query OR client_id ILIKE :query"
      @partners = Booking.where(sql_query, query: "%#{params[:query]}%")
    else
      @bookings = Booking.all
  end
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      redirect_to clients_path
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
  end

  def booking_params
    params.require(:booking).permit(:date, :city, :client_id, :guest_quantity, :food_type, :has_electricity, :chosen_partner_id, :requested_quotes_partners)
  end

end

