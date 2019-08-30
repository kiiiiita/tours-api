class Api::V1::UsersController < ApplicationController

  def show
    @user = User.find_by(email: params[:email])
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def update
    binding.pry
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :age,
        :country,
        :sex,
        :introduction,
      )
    end
end
