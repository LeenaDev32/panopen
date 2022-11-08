class CoursesController < ApplicationController
  def index
    course = Course.all 
    render json: course
  end 

  def show
    course = Course.find(params[:id])
    render json: course
  end 

  def create
    course = Course.create(course_params)
    render json: course
  end 

  def update
    course = Course.find(params[:id])
    course.update(course_params)
    render json: course
  end 

  def destroy
    course = Course.find(params[:id])
    course.destroy
    render json: courses
  end
  
  private
  def course_params
    params.require(:course).permit(:name)
  end
end
