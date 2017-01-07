class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @message = Message.new(message_params)
    if @message.save
      # MessageMailer.new_message(@message).deliver_now
      flash[:notice] = "message sent."
    else
      flash[:notice] = "fields cannot be left blank."
    end
    respond_to do |format|
      format.js {render inline: "location.reload();" }
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    flash[:notice] = "message deleted."
    redirect_to books_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :contact, :body)
  end

end
