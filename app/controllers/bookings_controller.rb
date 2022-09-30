class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def index
    @bookings = Booking.all # queremos mostrar todas las reservas pero SOLO de ese usuario,creemos se hace con PUNDIT.
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
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to services_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
