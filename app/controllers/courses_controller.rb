# frozen_string_literal: true

# app/controllers/courses_controller.rb
class CoursesController < ApplicationController
  before_action :set_course, only: %i[show update destroy]

  def index
    render json: Course.all.as_json
  end

  def show
    render json: @course
  end

  def create
    course = Course.create(course_params)
    render json: course
  end

  def update
    @course.update(course_params)
    render json: @course
  end

  def destroy
    @course.destroy
    render json: {}
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end
end
