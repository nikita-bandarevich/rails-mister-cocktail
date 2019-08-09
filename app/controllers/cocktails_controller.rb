class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_strong_params)
     if @cocktail.save
       redirect_to cocktails_path
     else
       render :new
     end
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
  end

  def delete
  end

  def update
  end

  def top
    @restaurants = Restaurant.where(rating: 5)
  end

  private

  def cocktails_strong_params
    params.require(:cocktail).permit(:name, :rating)
  end
end
