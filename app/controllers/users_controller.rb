# frozen_string_literal: true

# app/controllers/users_controller.rb
class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index
    render json: User.all.as_json
  end

  def show
    render json: @user
  end

  def create
    user = User.create(user_params)
    render json: user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
    render json: {}
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user)
          .permit(:name, :email, :role, :course_id)
  end
end
