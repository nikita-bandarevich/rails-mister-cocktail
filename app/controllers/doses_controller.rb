class DosesController < ApplicationController
  # def show
  # end

  # def update
  # end

  # def edit
  # end

  # def destroy
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_strong_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render :new
    end
  end

  private

  def doses_strong_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
