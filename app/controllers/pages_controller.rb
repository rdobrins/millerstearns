class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @book = Book.find(params[:book_id])
    @page = Page.new(page_params)
    @page.book = @book

    if @page.save
      flash[:notice] = "page added successfully."
      redirect_to book_path(@book)
    else
      flash[:errors] = @page.errors.full_messages.join(". ")
      redirect_to book_path(@book)
    end
  end

  def destroy
    @book = Book.find(params[:book_id])
    Page.find(params[:id]).destroy
    flash[:notice] = "page removed."
    redirect_to book_path(@book)
  end

  private

  def page_params
    params.require(:page).permit(:name, :avatar)
  end

end
