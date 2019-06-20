
  class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @cocktail = Cocktail.new
    @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @dose = Dose.new
    @ingredients = Ingredient.all
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    flash[:notice] = 'Votre cocktail a été supprimé'
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :description)
  end
end
