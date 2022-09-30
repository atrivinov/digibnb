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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
