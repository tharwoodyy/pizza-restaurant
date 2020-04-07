class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def car_params
    params.require(:pizza).permit(:name, :description, :price, :photo)
  end
end
