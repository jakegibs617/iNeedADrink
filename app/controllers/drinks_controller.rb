class DrinksController < ApplicationController
  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      flash[:notice] = 'Drink added.'
      redirect_to '/drinks'
    else
      render :new
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    flash[:notice] = 'Drink deleted.'
    redirect_to '/drinks'
  end

  def index
    if params[:search]
      search = params[:search]
      @drinks = Drink.search(search)
    else
      @drinks = Drink.all
    end
  end

  protected
  def drink_params
    params.require(:drink).permit(:title, :description, :season, :image_url, :instructions)
  end
end
