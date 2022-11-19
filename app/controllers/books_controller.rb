# frozen_string_literal: true

# app/controllers/books_controller.rb
class BooksController < ApplicationController
  before_action :set_book, only: %i[show update destroy]

  def index
    render json: Book.all.as_json
  end

  def show
    render json: @book
  end

  def create
    @book = Book.create(book_params)
    render json: @book
  end

  def update
    @book.update(book_params)
    render json: @book
  end

  def destroy
    @book.destroy
    render json: {}
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book)
          .permit(:name, :content, :course_id, :read_time)
  end
end
