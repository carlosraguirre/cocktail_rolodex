class UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      jwt = JWT.encode(
        {
          user_id: user.id,
          exp: 7.days.from_now.to_i
        },
        Rails.application.credentials.fetch(:secret_key_base),
        "HS256"
      )
      # binding.pry
      render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    users = User.all
    render json: users
  end
end
