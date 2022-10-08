class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  def index
    @bookings = Booking.all.where(user_id: current_user.id)
  end

  def new
    @service = Service.find(params[:service_id])
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    # @bookings = Booking.where(service_id: params[:service_id])
    # .and(Booking.where('start_date > ?', Date.today))
    # @bookings.each do |booking|
    #   if booking.start_date <= @booking.start_date && Date.today < @booking.end_date
    #     @service.available = false
    #   else
    #     @service.available = true
    #   end
    # end
    @booking.user = current_user
    @service = Service.find(params[:service_id])
    @booking.service = @service
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    # change_status
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

  def change_status
    @service = Service.find(params[:service_id])
    if @booking.start_date < Date.today && Date.today < @booking.end_date
      @service.available = false
    else
      @service.available = true
    end
  end
end
