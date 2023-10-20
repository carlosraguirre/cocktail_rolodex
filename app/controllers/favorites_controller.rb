class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(
      user_id: current_user.id
    )
    if favorite.save
      render json: favorite
    else
      render json: {error: favorite.errors.full_messages}, status: :unprocessable_entity
    end
  end

end