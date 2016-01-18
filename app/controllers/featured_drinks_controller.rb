class FeaturedDrinksController < ApplicationController
  def new
    @drink = Drink.new
  end

  def index
    @drinks = Drink.all
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    flash[:notice] = 'Drink deleted.'
    redirect_to '/featured-drinks'
  end

  protected
  def drink_params
    params.require(:drink).permit(:title, :description)
  end

end
