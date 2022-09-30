class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new
  end

  def show

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @service = Service.find(params[:service_id])
    @booking.service = @service
    if @booking.save
      # @service.available = false
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
