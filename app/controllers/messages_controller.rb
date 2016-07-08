class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message Successfully Sent."
      MessageMailer.new_message(@message).deliver_later
    else
      flash[:errors] = @message.errors.full_messages.join(". ")
    end
    respond_to do |format|
      format.js {render inline: "location.reload();" }
    end
  end

  def destroy
    Message.find(params[:id]).destroy
    flash[:notice] = "Message Deleted"
    redirect_to books_path
  end

  private

  def message_params
    params.require(:message).permit(:name, :contact, :body)
  end

end
