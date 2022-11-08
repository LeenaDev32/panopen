class BooksController < ApplicationController
  def index
    books = Book.all 
    render json: books
  end 

  def show
    book = Book.find(params[:id])
    render json: book 
  end 

  def create
    book = Book.create(book_params)
    render json: book  
  end 

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    render json: book
  end 

  def destroy
    books = Book.all 
    book = Book.find(params[:id])
    book.destroy
    render json: books
  end 

  private
    def book_params
      params.require(:book).permit(:name, :content, :course_id, :read_time)
    end
end