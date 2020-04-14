class PizzasController < ApplicationController
  # before_action :find_pizza, only: [:show, :edit, :update, :destroy]
  # before_action :check_owner_access, only: [:update, :destroy]

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :price, :photo)
  end
end
