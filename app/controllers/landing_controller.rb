class LandingController < ApplicationController
  skip_before_action :verify_authenticity_token

  def gallery
    @books = Book.all
  end

  def home
    @admin = current_admin
  end

  def contact
    @message = Message.new
  end

end
