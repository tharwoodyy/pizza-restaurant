class OrdersController < ApplicationController
  def new
    @order = Order.new
    @pizza = Pizza.find(params[:pizza_id])

    redirect_to pizza_path(@pizza) if @pizza.user == current_user
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    @pizza = Pizza.find(params[:pizza_id])
    @order.pizza = @pizza
    @order.user = current_user
    redirect_to pizza_path(@pizza) if @pizza.user == current_user
    if @order.save!
      redirect_to pizza_orders_path
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

    def order_params
    params.require(:order).permit(:quantity, :pizza_id, :user_id)
    end
end
