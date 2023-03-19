class CocktailsController < ApplicationController
  def index
    cocktails = Cocktail.order('created_at DESC')
    render json: cocktails
  end

  def show
    cocktail = Cocktail.find_by(id: params[:id])
    render json: cocktail
  end

  def create
    cocktail = Cocktail.new(
      cocktail_name: params[:cocktail_name],
      ingredient: params[:ingredient],
      direction: params[:direction],
      recipe_link: params[:recipe_link],
      favorite: params[:favorite],
    )
    if cocktail.save
      render json: cocktail
    else
      render json: {error: cocktail.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    cocktail = Cocktail.find_by(id: params[:id])
    cocktail.destroy
    render json: cocktail
  end

  def update
    cocktail =Cocktail.find_by(id: params[:id])
    cocktail.cocktail_name = params[:cocktail_name] || cocktail.cocktail_name
    cocktail.ingredient = params[:ingredient] || cocktail.ingredient
    cocktail.direction = params[:direction] || cocktail.direction
    cocktail.recipe_link = params[:recipe_link] || cocktail.recipe_link
    cocktail.favorite = params[:favorite] || cocktail.favorite

    if cocktail.save
      render json: cocktail
    else
      render json: {error: cocktail.errors.full_messages}, status: :unprocessable_entity
    end
  end

end

