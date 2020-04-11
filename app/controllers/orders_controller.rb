class OrdersController < ApplicationController
  def new
    @order = Order.new
    @pizza = Pizza.find(params[:pizza_id])

    redirect_to pizza_path(@pizza) if @pizza.user == current_user
  end

  def index
    @orders = Order.all
  end

  # def create
  #   @booking = Booking.new(booking_params)
  #   @car = Car.find(params[:car_id])
  #   @booking.car = @car
  #   @booking.user = current_user
  #   redirect_to car_path(@car) if @car.user == current_user
  #   if @booking.save!
  #     redirect_to car_bookings_path
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to bookings_path
  # end

  private

    def order_params
    params.require(:order).permit(:quantity, :pizza_id, :user_id)
    end
end
