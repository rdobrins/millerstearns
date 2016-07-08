class LandingController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @books = Book.all
  end

  def home
    @admin = current_admin
    @message = Message.new
  end

end
