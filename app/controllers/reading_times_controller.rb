# frozen_string_literal: true

# app/controllers/reading_times_controller.rb
class ReadingTimesController < ApplicationController
  before_action :set_reading_time, only: %i[show update destroy]

  def index
    render json: ReadingTime.joins(:book, :user).select("reading_times.id, reading_times.total_time, users.email as user_email, books.name as book_name").as_json
  end

  def show
    render json: @reading_time
  end

  def create
    reading_time = ReadingTime.create(reading_time_params)
    render json: reading_time
  end

  def update
    @reading_time.update(reading_time_params)
    render json: @reading_time
  end

  def destroy
    @reading_time.destroy
    render json: {}
  end

  private

  def set_reading_time
    @reading_time = ReadingTime.find(params[:id])
  end

  def reading_time_params
    params.require(:reading_time)
          .permit(:total_time, :book_id, :user_id)
  end
end
