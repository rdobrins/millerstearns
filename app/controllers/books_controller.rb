class BooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @admin = current_admin
    @book = Book.new
    @books = Book.all.sort_by &:created_at
    @messages = Message.all.sort_by &:created_at
  end

  def show
    @book = Book.find(params[:id])
    @page = Page.new
    @pages = @book.pages.sort_by &:created_at
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book added successfully"
      redirect_to books_path
    else
      flash[:errors] = @book.errors.full_messages.join(". ")
      redirect_to books_path
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book updated successfully"
      redirect_to books_path
    else
      flash[:errors] = @book.errors.full_messages.join(". ")
      render :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :avatar, :summary)
  end

end
