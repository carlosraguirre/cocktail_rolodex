class FavoritesController < ApplicationController

  def index
    favorites = Favorite.order('created_at DESC')
    render json: favorites
  end
  
  def create
    favorite = Favorite.new(
      user_id: current_user.id,
    )
    if favorite.save
      render json: favorite
    else
      render json: {error: favorite.errors.full_messages}, status: :unprocessable_entity
    end       
  end

  def destroy
    favorite = current_user.Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: favorite
  end

  def update
    favorite = Favorite.find_by(id: params[:id])
    favorite.is_favorite = params[:is_favorite] || favorite.is_favorite

    if favorite.save
      render json: favorite
    else
      render json: {error: favorite.errors.full_messages}, status: :unprocessable_entity
    end
  end

end